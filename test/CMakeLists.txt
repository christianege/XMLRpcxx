project(test)

INCLUDE_DIRECTORIES(
${libXmlRpcxx_SOURCE_DIR}/include
)

SET(EXECUTABLE_OUTPUT_PATH ${libXmlRpcxx_BINARY_DIR}/bin)


ADD_EXECUTABLE( FileClient FileClient.cpp )
TARGET_LINK_LIBRARIES(FileClient XmlRpc)

ADD_EXECUTABLE( HelloClient HelloClient.cpp )
TARGET_LINK_LIBRARIES(HelloClient XmlRpc)

ADD_EXECUTABLE( HelloServer HelloServer.cpp )
TARGET_LINK_LIBRARIES(HelloServer XmlRpc)

ADD_EXECUTABLE( TestBase64Client TestBase64Client.cpp )
TARGET_LINK_LIBRARIES(TestBase64Client XmlRpc)

ADD_EXECUTABLE( TestBase64Server TestBase64Server.cpp )
TARGET_LINK_LIBRARIES(TestBase64Server XmlRpc)

ADD_EXECUTABLE( TestEGroupwareSSLClient TestEGroupwareSSLClient.cpp )
TARGET_LINK_LIBRARIES(TestEGroupwareSSLClient XmlRpc)

ADD_EXECUTABLE( TestValues TestValues.cpp )
TARGET_LINK_LIBRARIES(TestValues XmlRpc)

ADD_EXECUTABLE( TestXml TestXml.cpp )
TARGET_LINK_LIBRARIES(TestXml XmlRpc)

ADD_EXECUTABLE( Validator Validator.cpp )
TARGET_LINK_LIBRARIES(Validator XmlRpc)


