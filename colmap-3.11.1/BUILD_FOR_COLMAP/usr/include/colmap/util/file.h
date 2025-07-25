// Copyright (c) 2023, ETH Zurich and UNC Chapel Hill.
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//
//     * Neither the name of ETH Zurich and UNC Chapel Hill nor the names of
//       its contributors may be used to endorse or promote products derived
//       from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

#pragma once

#include "colmap/util/endian.h"
#include "colmap/util/logging.h"

#include <filesystem>
#include <fstream>
#include <string>
#include <vector>

#define THROW_CHECK_FILE_EXISTS(path) \
  THROW_CHECK(ExistsFile(path)) << "File " << (path) << " does not exist."

#define THROW_CHECK_DIR_EXISTS(path) \
  THROW_CHECK(ExistsDir(path)) << "Directory " << (path) << " does not exist."

#define THROW_CHECK_PATH_OPEN(path)                           \
  THROW_CHECK(std::ofstream(path, std::ios::trunc).is_open()) \
      << "Could not open " << (path)                          \
      << ". Is the path a directory or does the parent dir not exist?"

#define THROW_CHECK_FILE_OPEN(file, path) \
  THROW_CHECK((file).is_open())           \
      << "Could not open " << (path)      \
      << ". Is the path a directory or does the parent dir not exist?"

#define THROW_CHECK_HAS_FILE_EXTENSION(path, ext)                        \
  THROW_CHECK(HasFileExtension(path, ext))                               \
      << "Path " << (path) << " does not match file extension " << (ext) \
      << "."

namespace colmap {

enum class CopyType { COPY, HARD_LINK, SOFT_LINK };

// Append trailing slash to string if it does not yet end with a slash.
std::string EnsureTrailingSlash(const std::string& str);

// Check whether file name has the file extension (case insensitive).
bool HasFileExtension(const std::string& file_name, const std::string& ext);

// Split the path into its root and extension, for example,
// "dir/file.jpg" into "dir/file" and ".jpg".
void SplitFileExtension(const std::string& path,
                        std::string* root,
                        std::string* ext);

// Copy or link file from source to destination path
void FileCopy(const std::string& src_path,
              const std::string& dst_path,
              CopyType type = CopyType::COPY);

// Check if the path points to an existing directory.
bool ExistsFile(const std::string& path);

// Check if the path points to an existing directory.
bool ExistsDir(const std::string& path);

// Check if the path points to an existing file or directory.
bool ExistsPath(const std::string& path);

// Create the directory if it does not exist.
void CreateDirIfNotExists(const std::string& path, bool recursive = false);

// Extract the base name of a path, e.g., "image.jpg" for "/dir/image.jpg".
std::string GetPathBaseName(const std::string& path);

// Get the path of the parent directory for the given path.
std::string GetParentDir(const std::string& path);

// Join multiple paths into one path.
template <typename... T>
std::string JoinPaths(T const&... paths);

// Return list of files in directory.
std::vector<std::string> GetFileList(const std::string& path);

// Return list of files, recursively in all sub-directories.
std::vector<std::string> GetRecursiveFileList(const std::string& path);

// Return list of directories, recursively in all sub-directories.
std::vector<std::string> GetDirList(const std::string& path);

// Return list of directories, recursively in all sub-directories.
std::vector<std::string> GetRecursiveDirList(const std::string& path);

// Get the size in bytes of a file.
size_t GetFileSize(const std::string& path);

// Read contiguous binary blob from file.
template <typename T>
void ReadBinaryBlob(const std::string& path, std::vector<T>* data);

// Write contiguous binary blob to file.
template <typename T>
void WriteBinaryBlob(const std::string& path, const std::vector<T>& data);

// Read each line of a text file into a separate element. Empty lines are
// ignored and leading/trailing whitespace is removed.
std::vector<std::string> ReadTextFileLines(const std::string& path);

////////////////////////////////////////////////////////////////////////////////
// Implementation
////////////////////////////////////////////////////////////////////////////////

template <typename... T>
std::string JoinPaths(T const&... paths) {
  std::filesystem::path result;
  int unpack[]{0, (result = result / std::filesystem::path(paths), 0)...};
  static_cast<void>(unpack);
  return result.string();
}

template <typename T>
void ReadBinaryBlob(const std::string& path, std::vector<T>* data) {
  std::ifstream file(path, std::ios::binary | std::ios::ate);
  THROW_CHECK_FILE_OPEN(file, path);
  file.seekg(0, std::ios::end);
  const size_t num_bytes = file.tellg();
  CHECK_EQ(num_bytes % sizeof(T), 0);
  data->resize(num_bytes / sizeof(T));
  file.seekg(0, std::ios::beg);
  ReadBinaryLittleEndian<T>(&file, data);
}

template <typename T>
void WriteBinaryBlob(const std::string& path, const std::vector<T>& data) {
  std::ofstream file(path, std::ios::binary);
  THROW_CHECK_FILE_OPEN(file, path);
  WriteBinaryLittleEndian<T>(&file, data);
}

}  // namespace colmap
