#ifndef _XMLRPCVALUETEST_H_
#define _XMLRPCVALUETEST_H_

#include <cppunit/extensions/HelperMacros.h>


class XmlRpcValueTest : public CppUnit::TestFixture
{
  CPPUNIT_TEST_SUITE( XmlRpcValueTest );
  CPPUNIT_TEST( testConstructor );
  CPPUNIT_TEST_SUITE_END();

public:
  void setUp();
  void tearDown();

  void testConstructor();


};

#endif // _XMLRPCVALUETEST_H_
