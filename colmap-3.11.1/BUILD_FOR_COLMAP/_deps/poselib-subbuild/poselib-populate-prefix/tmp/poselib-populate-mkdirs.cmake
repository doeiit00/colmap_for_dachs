# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/_deps/poselib-src"
  "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/_deps/poselib-build"
  "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/_deps/poselib-subbuild/poselib-populate-prefix"
  "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/_deps/poselib-subbuild/poselib-populate-prefix/tmp"
  "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/_deps/poselib-subbuild/poselib-populate-prefix/src/poselib-populate-stamp"
  "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/_deps/poselib-subbuild/poselib-populate-prefix/src"
  "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/_deps/poselib-subbuild/poselib-populate-prefix/src/poselib-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/_deps/poselib-subbuild/poselib-populate-prefix/src/poselib-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/_deps/poselib-subbuild/poselib-populate-prefix/src/poselib-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
