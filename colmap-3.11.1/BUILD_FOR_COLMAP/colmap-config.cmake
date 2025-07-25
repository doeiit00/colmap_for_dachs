# Copyright (c) 2023, ETH Zurich and UNC Chapel Hill.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#
#     * Neither the name of ETH Zurich and UNC Chapel Hill nor the names of
#       its contributors may be used to endorse or promote products derived
#       from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.


# Find package config for COLMAP library.
#
# The following variables are set by this config:
#
#   COLMAP_FOUND: TRUE if COLMAP is found.
#   COLMAP_VERSION: COLMAP version.
#
# The colmap::colmap imported interface target is defined.


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was colmap-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

set(COLMAP_FOUND FALSE)

# Set hints for finding dependency packages.

set(FLANN_INCLUDE_DIR_HINTS /home/es/es_es/es_doeiit00/WORK/COLMAP/flann-1.9.2/BUILD_FOR_COLMAP/usr/include)
set(FLANN_LIBRARY_DIR_HINTS /home/es/es_es/es_doeiit00/WORK/COLMAP/flann-1.9.2/BUILD_FOR_COLMAP/usr/lib)

set(LZ4_INCLUDE_DIR_HINTS )
set(LZ4_LIBRARY_DIR_HINTS )

set(FREEIMAGE_INCLUDE_DIR_HINTS )
set(FREEIMAGE_LIBRARY_DIR_HINTS )

set(METIS_INCLUDE_DIR_HINTS )
set(METIS_LIBRARY_DIR_HINTS )

set(GLEW_INCLUDE_DIR_HINTS )
set(GLEW_LIBRARY_DIR_HINTS )

# Find dependency packages.

set(TEMP_CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH})
set(CMAKE_MODULE_PATH ${PACKAGE_PREFIX_DIR}/share/colmap/cmake)

# Set the exported variables.

set(COLMAP_FOUND TRUE)

set(COLMAP_VERSION 3.11.1)

set(OPENMP_ENABLED ON)

set(CUDA_ENABLED ON)
set(CUDA_MIN_VERSION 7.0)

set(GUI_ENABLED OFF)

set(CGAL_ENABLED ON)

set(FETCH_POSELIB ON)

include(${PACKAGE_PREFIX_DIR}/share/colmap/colmap-targets.cmake)
include(${PACKAGE_PREFIX_DIR}/share/colmap/cmake/FindDependencies.cmake)
check_required_components(colmap)

# Reset to previous value
set(CMAKE_MODULE_PATH ${TEMP_CMAKE_MODULE_PATH})
