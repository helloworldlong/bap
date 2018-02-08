# Install script for directory: /home/l/bap/utils/stp-2.1.2/lib

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libstp.a")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/lib" TYPE STATIC_LIBRARY FILES "/home/l/bap/utils/stp-2.1.2/build/lib/libstp.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstp.so.2.1.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstp.so.2.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstp.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/l/bap/utils/stp-2.1.2/build/lib/libstp.so.2.1.2"
    "/home/l/bap/utils/stp-2.1.2/build/lib/libstp.so.2.1"
    "/home/l/bap/utils/stp-2.1.2/build/lib/libstp.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstp.so.2.1.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstp.so.2.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstp.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_REMOVE
           FILE "${file}")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/stp" TYPE FILE FILES "/home/l/bap/utils/stp-2.1.2/include/stp/c_interface.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/l/bap/utils/stp-2.1.2/build/lib/Globals/cmake_install.cmake")
  INCLUDE("/home/l/bap/utils/stp-2.1.2/build/lib/AST/cmake_install.cmake")
  INCLUDE("/home/l/bap/utils/stp-2.1.2/build/lib/AbsRefineCounterExample/cmake_install.cmake")
  INCLUDE("/home/l/bap/utils/stp-2.1.2/build/lib/Simplifier/cmake_install.cmake")
  INCLUDE("/home/l/bap/utils/stp-2.1.2/build/lib/Printer/cmake_install.cmake")
  INCLUDE("/home/l/bap/utils/stp-2.1.2/build/lib/Parser/cmake_install.cmake")
  INCLUDE("/home/l/bap/utils/stp-2.1.2/build/lib/Interface/cmake_install.cmake")
  INCLUDE("/home/l/bap/utils/stp-2.1.2/build/lib/extlib-abc/cmake_install.cmake")
  INCLUDE("/home/l/bap/utils/stp-2.1.2/build/lib/extlib-constbv/cmake_install.cmake")
  INCLUDE("/home/l/bap/utils/stp-2.1.2/build/lib/STPManager/cmake_install.cmake")
  INCLUDE("/home/l/bap/utils/stp-2.1.2/build/lib/ToSat/cmake_install.cmake")
  INCLUDE("/home/l/bap/utils/stp-2.1.2/build/lib/Sat/cmake_install.cmake")
  INCLUDE("/home/l/bap/utils/stp-2.1.2/build/lib/Util/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

