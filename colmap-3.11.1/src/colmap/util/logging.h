#pragma once

#include <glog/logging.h>
#include <cstring>
#include <stdexcept>

namespace colmap {

// Simple replacements for COLMAP-specific logging
inline void InitializeGlog(char** argv) {
  
  google::InitGoogleLogging(argv[0]);
}

inline const char* __GetConstFileBaseName(const char* file) {
  const char* base = strrchr(file, '/');
  return base ? base + 1 : file;
}

inline bool __CheckOptionImpl(const char* file, int line, bool condition, const char* condition_text) {
  if (!condition) {
    LOG(ERROR) << "[" << file << ":" << line << "] Check failed: " << condition_text;
    return false;
  }
  return true;
}

} // namespace colmap

// Map COLMAP macros to glog macros
#define THROW_CHECK(condition) CHECK(condition)
#define THROW_CHECK_EQ(val1, val2) CHECK_EQ(val1, val2)
#define THROW_CHECK_NE(val1, val2) CHECK_NE(val1, val2)
#define THROW_CHECK_LE(val1, val2) CHECK_LE(val1, val2)
#define THROW_CHECK_LT(val1, val2) CHECK_LT(val1, val2)
#define THROW_CHECK_GE(val1, val2) CHECK_GE(val1, val2)
#define THROW_CHECK_GT(val1, val2) CHECK_GT(val1, val2)

// File check macro
#define THROW_CHECK_FILE_OPEN(file, path) \
  THROW_CHECK((file).is_open()) << "Could not open file: " << path

// Print functions
inline void PrintHeading1(const std::string& heading) {
  LOG(INFO) << std::string(78, '=');
  LOG(INFO) << heading;
  LOG(INFO) << std::string(78, '=');
}

inline void PrintHeading2(const std::string& heading) {
  LOG(INFO) << heading;
  LOG(INFO) << std::string(std::min<int>(heading.size(), 78), '-');
}


// String utility functions that COLMAP needs
#include <sstream>
#include <vector>
#include <algorithm>
#include <cstdarg>

namespace colmap {

inline std::string StringPrintf(const char* format, ...) {
  va_list args;
  va_start(args, format);
  
  va_list args_copy;
  va_copy(args_copy, args);
  const int size = vsnprintf(nullptr, 0, format, args_copy);
  va_end(args_copy);
  
  std::string result(size, '\0');
  vsnprintf(&result[0], size + 1, format, args);
  va_end(args);
  
  return result;
}

inline std::vector<std::string> StringSplit(const std::string& str, const std::string& delim) {
  std::vector<std::string> tokens;
  size_t start = 0;
  size_t end = 0;
  
  while ((end = str.find(delim, start)) != std::string::npos) {
    if (end != start) {
      tokens.push_back(str.substr(start, end - start));
    }
    start = end + delim.length();
  }
  
  if (start < str.length()) {
    tokens.push_back(str.substr(start));
  }
  
  return tokens;
}

inline void StringTrim(std::string* str) {
  str->erase(str->begin(), std::find_if(str->begin(), str->end(), [](int ch) {
    return !std::isspace(ch);
  }));
  str->erase(std::find_if(str->rbegin(), str->rend(), [](int ch) {
    return !std::isspace(ch);
  }).base(), str->end());
}

inline void StringToLower(std::string* str) {
  std::transform(str->begin(), str->end(), str->begin(), ::tolower);
}

inline std::string StringReplace(const std::string& str, const std::string& old_str, const std::string& new_str) {
  std::string result = str;
  size_t pos = 0;
  while ((pos = result.find(old_str, pos)) != std::string::npos) {
    result.replace(pos, old_str.length(), new_str);
    pos += new_str.length();
  }
  return result;
}

} // namespace colmap

// Map FATAL to FATAL
#define FATAL FATAL

// Missing macros
#define THROW_CHECK_NOTNULL(val) CHECK_NOTNULL(val)

// Missing CHECK_OPTION macros
#define CHECK_OPTION_GT(val1, val2) CHECK_GT(val1, val2)
#define CHECK_OPTION_GE(val1, val2) CHECK_GE(val1, val2)
#define CHECK_OPTION_LT(val1, val2) CHECK_LT(val1, val2)
#define CHECK_OPTION_LE(val1, val2) CHECK_LE(val1, val2)
#define CHECK_OPTION_EQ(val1, val2) CHECK_EQ(val1, val2)
#define CHECK_OPTION_NE(val1, val2) CHECK_NE(val1, val2)

// LogMessageFatalThrow replacement
template<typename T>
class LogMessageFatalThrow {
public:
  LogMessageFatalThrow(const char* file, int line) {
    stream_ << "[" << file << ":" << line << "] ";
  }
  
  ~LogMessageFatalThrow() noexcept(false) {
    throw T(stream_.str());
  }
  
  std::ostringstream& stream() { return stream_; }
  
private:
  std::ostringstream stream_;
};

// Add missing GOOGLE_PREDICT_FALSE (we already redefined it but need to ensure it's available)
#ifndef GOOGLE_PREDICT_FALSE
#define GOOGLE_PREDICT_FALSE(x) (x)
#endif





// Missing CHECK_OPTION macros
#define CHECK_OPTION(val) CHECK(val)
#define CHECK_OPTION_IMPL(val) (val)

// Include memory for unique_ptr support
#include <memory>

// Fix for unique_ptr in THROW_CHECK_NOTNULL
template<typename T>
std::unique_ptr<T> THROW_CHECK_NOTNULL_UNIQUE_PTR(std::unique_ptr<T> ptr) {
  if (!ptr) {
    throw std::runtime_error("Null unique_ptr");
  }
  return ptr;
}

