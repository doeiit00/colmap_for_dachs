#
# Based on:
#   http://www.cmake.org/Wiki/CMake_FAQ#Can_I_do_.22make_uninstall.22_with_CMake.3F
#

# 'delete_empty_folder' function
function(delete_empty_folder DIR)
  if(NOT EXISTS ${DIR})
    return()
  endif()

  # check if folder is empty
  file(GLOB RESULT "${DIR}/*")
  list(LENGTH RESULT RES_LEN)
  if(RES_LEN EQUAL 0)
    message(STATUS "Delete empty folder ${DIR}")
    file(REMOVE_RECURSE ${DIR})
  else()
    # message(STATUS "${DIR} is not empty! It won't be removed.")
    # message(STATUS "FILES = ${RESULT}")
  endif()
endfunction(delete_empty_folder)

# find 'install_manifest.txt'
if(NOT EXISTS "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/_deps/poselib-build/install_manifest.txt")
  message(FATAL_ERROR "Cannot find install manifest: /home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/_deps/poselib-build/install_manifest.txt")
endif()

# remove files from 'install_manifest.txt'
message(STATUS "")
message(STATUS "Removing files from 'install_manifest.txt'")
file(READ "/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/_deps/poselib-build/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach(file ${files})
  message(STATUS "Uninstalling $ENV{DESTDIR}${file}")
  if(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
    exec_program("/usr/bin/cmake" ARGS "-E remove \"$ENV{DESTDIR}${file}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval)
    if(NOT "${rm_retval}" STREQUAL 0)
      message(FATAL_ERROR "Problem when removing $ENV{DESTDIR}${file}")
    endif()
  else()
    message(STATUS "File $ENV{DESTDIR}${file} does not exist.")
  endif()

  # create list of folders
  get_filename_component(FOLDER ${file} DIRECTORY)
  set(FOLDERS ${FOLDERS} ${FOLDER})
endforeach(file)


# remove empty folders
message(STATUS "")
message(STATUS "Removing empty folders")

list(REMOVE_DUPLICATES FOLDERS)
foreach(dir ${FOLDERS})
#   message(STATUS ${dir})
  delete_empty_folder(${dir})
#   message(STATUS "")
endforeach(dir)

delete_empty_folder("/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/usr/include")
delete_empty_folder("/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/usr/bin")
delete_empty_folder("/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/usr/lib64/cmake")
delete_empty_folder("/home/es/es_es/es_doeiit00/WORK/COLMAP/colmap-3.11.1/BUILD_FOR_COLMAP/usr/lib64")
message(STATUS "")
