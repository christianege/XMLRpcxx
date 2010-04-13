include_directories(${CMAKE_SOURCE_DIR}/include ${CMAKE_SOURCE_DIR}/cppunit/include)

SET(TESTSOURCES
    src/xmlrpcvaluetest.cpp
    src/runtests.cpp
)

add_executable(run_tests ${TESTSOURCES}  )
SET(EXECUTABLE_OUTPUT_PATH ${libXmlRpcxx_BINARY_DIR}/bin)

ADD_CUSTOM_COMMAND(TARGET run_tests POST_BUILD
  COMMAND "${EXECUTABLE_OUTPUT_PATH}/run_tests")
ADD_CUSTOM_TARGET(tests "${EXECUTABLE_OUTPUT_PATH}/run_tests" DEPENDS run_tests COMMENT "Running CPPUNIT tests...")

TARGET_LINK_LIBRARIES(run_tests XmlRpc  cppunit)
install_programs(/bin FILES run_tests)
