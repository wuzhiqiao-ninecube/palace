# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

#
# Configure Gmsh SDK (precompiled)
#

include(ExternalProject)
ExternalProject_Add(gmsh_sdk
  PREFIX ${CMAKE_BINARY_DIR}/extern/gmsh_sdk-cmake
  URL ${CMAKE_CURRENT_SOURCE_DIR}/thirdpart/gmsh-4.15.1-Linux64-sdk.tgz
  SOURCE_DIR ${CMAKE_BINARY_DIR}/extern/gmsh_sdk
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ""
  INSTALL_COMMAND ${CMAKE_COMMAND} -E copy_directory <SOURCE_DIR>/bin ${CMAKE_INSTALL_PREFIX}/bin &&
                  ${CMAKE_COMMAND} -E copy_directory <SOURCE_DIR>/include ${CMAKE_INSTALL_PREFIX}/include &&
                  ${CMAKE_COMMAND} -E copy_directory <SOURCE_DIR>/lib ${CMAKE_INSTALL_PREFIX}/lib &&
                  ${CMAKE_COMMAND} -E copy_directory <SOURCE_DIR>/share ${CMAKE_INSTALL_PREFIX}/share
)