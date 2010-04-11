include_directories(${CMAKE_SOURCE_DIR}/include ${CMAKE_SOURCE_DIR}/cppunit/include)
add_executable(run_tests src/runtests.cpp)
SET(EXECUTABLE_OUTPUT_PATH ${libXmlRpcxx_BINARY_DIR}/bin)

ADD_CUSTOM_COMMAND(TARGET run_tests POST_BUILD
  COMMAND "${EXECUTABLE_OUTPUT_PATH}/run_tests")
ADD_CUSTOM_TARGET(tests "${EXECUTABLE_OUTPUT_PATH}/run_tests" DEPENDS run_tests COMMENT "Running CPPUNIT tests...")

set(TESTLIBSOURCES
  lib_src/xmlrpcvaluetest.cpp
)

ADD_LIBRARY(XmlRpcTest STATIC ${TESTLIBSOURCES})

TARGET_LINK_LIBRARIES(run_tests XmlRpc XmlRpcTest cppunit)
install_programs(/bin FILES run_tests)
