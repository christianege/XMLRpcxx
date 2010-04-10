# This is a cmake file for the XmlRpc++ library
# maybee this works also with previos versions of cmake,
# but it is not tested
cmake_minimum_required(VERSION 2.6)

project( libXmlRpcxx )

INCLUDE_DIRECTORIES(
${libXmlRpcxx_SOURCE_DIR}/include
)

set(SOURCES 
  src/XmlRpcClient.cpp
  src/XmlRpcDispatch.cpp
  src/XmlRpcServer.cpp
  src/XmlRpcServerConnection.cpp
  src/XmlRpcServerMethod.cpp
  src/XmlRpcSocket.cpp
  src/XmlRpcSource.cpp
  src/XmlRpcUtil.cpp
  src/XmlRpcValue.cpp
  README.html
)

# check for visual studio 
if(MSVC)
add_definitions( 
  -DWIN32
  -D_CRT_SECURE_NO_DEPRECATE
  -D_LIB
  -D_WINDOWS
)
endif()

ADD_LIBRARY(XmlRpc STATIC ${SOURCES})

# ad special link target for visual studio 
if(MSVC)
target_link_libraries( XmlRpc ws2_32 )
endif()

SET(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

ADD_SUBDIRECTORY(test)

FILE(GLOB files "${PROJECT_SOURCE_DIR}/include/*.h")
if(WIN32)
INSTALL(FILES ${files} DESTINATION include)
else()
INSTALL(FILES ${files} DESTINATION include/libXmlRpcxx)
endif()

INSTALL(TARGETS XmlRpc
  RUNTIME DESTINATION bin
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib
)
INCLUDE(InstallRequiredSystemLibraries)
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "XmlRpc++")
SET(CPACK_PACKAGE_VENDOR "Nereus")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_CURRENT_SOURCE_DIR}/README")
SET(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/COPYING")
SET(CPACK_PACKAGE_VERSION_MAJOR "0")
SET(CPACK_PACKAGE_VERSION_MINOR "8")
SET(CPACK_PACKAGE_VERSION_PATCH "2")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "CMake ${CMake_VERSION_MAJOR}.${CMake_VERSION_MINOR}")
INCLUDE(CPack)

