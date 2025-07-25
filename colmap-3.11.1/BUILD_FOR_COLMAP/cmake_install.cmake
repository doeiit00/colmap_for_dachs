# Install script for directory: /home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/applications" TYPE FILE FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/doc/COLMAP.desktop")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/controllers/libcolmap_controllers.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/estimators/libcolmap_estimators.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/exe/libcolmap_exe.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/feature/libcolmap_feature_types.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/feature/libcolmap_feature.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/geometry/libcolmap_geometry.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/image/libcolmap_image.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/math/libcolmap_math.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/mvs/libcolmap_mvs.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/optim/libcolmap_optim.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/retrieval/libcolmap_retrieval.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/scene/libcolmap_scene.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/sensor/libcolmap_sensor.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/sfm/libcolmap_sfm.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/util/libcolmap_util.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/thirdparty/PoissonRecon/libcolmap_poisson_recon.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/thirdparty/VLFeat/libcolmap_vlfeat.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/thirdparty/LSD/libcolmap_lsd.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/util/libcolmap_util_cuda.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/mvs/libcolmap_mvs_cuda.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/thirdparty/SiftGPU/libcolmap_sift_gpu.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/_deps/poselib-build/PoseLib/libPoseLib.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/colmap" TYPE FILE FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/colmap-config.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/colmap" TYPE FILE FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/colmap-config-version.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/colmap/colmap-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/colmap/colmap-targets.cmake"
         "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/CMakeFiles/Export/a598120baa4db1548da9c487cff1e9f4/colmap-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/colmap/colmap-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/colmap/colmap-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/colmap" TYPE FILE FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/CMakeFiles/Export/a598120baa4db1548da9c487cff1e9f4/colmap-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/colmap" TYPE FILE FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/CMakeFiles/Export/a598120baa4db1548da9c487cff1e9f4/colmap-targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/src/colmap" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/colmap" TYPE DIRECTORY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/src/thirdparty" FILES_MATCHING REGEX ".*[.]h|.*[.]hpp|.*[.]inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/colmap" TYPE DIRECTORY FILES "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/cmake" FILES_MATCHING REGEX "/Find[^/]*\\.cmake$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/colmap/cmake_install.cmake")
  include("/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/src/thirdparty/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
