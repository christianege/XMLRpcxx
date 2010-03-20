// TestBase64Server.cpp : Simple XMLRPC server example. Usage: TestBase64Server serverPort
//
#if defined(_MSC_VER)
# pragma warning(disable:4786)    // identifier was truncated in debug info
#endif


#include <iostream>
#include <fstream>
#include <algorithm>
#include <stdlib.h>
#ifndef _MSC_VER
#include <unistd.h>
#endif

#if defined(_MSC_VER)
#include <direct.h> // getcwd
# define getcwd _getcwd
#endif

#include "XmlRpc.h"
using namespace XmlRpc;


// The server
XmlRpcServer s;

// No arguments, result is Base64-encoded pngnow.png data.
class TestBase64 : public XmlRpcServerMethod
{
public:
  TestBase64(XmlRpcServer* s) : XmlRpcServerMethod("TestBase64", s) {}

  void execute(XmlRpcValue& params, XmlRpcValue& result)
  {
    //std::cout << "Attempting to open pngnow.png" << std::endl;
    std::ifstream infile("pngnow.png", std::ios::binary);
    if (infile.fail())
    {
      //std::cout << "Attempting to open ../pngnow.png" << std::endl;
      infile.clear();
      infile.open("../pngnow.png", std::ios::binary);
    }
    if (infile.fail())
    {
      //std::cout << "Attempting to open test/pngnow.png" << std::endl;
      infile.clear();
      infile.open("test/pngnow.png", std::ios::binary);
    }
    if (infile.fail())
    {
      char pwd[2000];
      getcwd(pwd, sizeof(pwd));
      throw XmlRpcException(std::string("Could not open file pngnow.png, pwd is ") + pwd);
    }

    // Coerce result type to be binary data
    XmlRpcValue::BinaryData& data = result;
    for (int n = 0; ; ++n)
    {
      char c = infile.get();
      if (infile.eof())
      {
        std::cerr << "Read " << n << " bytes from pngnow.png\n";
        break;
      }
      data.push_back(c);
    }
  }
} TestBase64(&s);    // This constructor registers the method with the server



int main(int argc, char* argv[])
{
  if (argc != 2) {
    std::cerr << "Usage: TestBase64Server serverPort\n";
    return -1;
  }
  int port = atoi(argv[1]);

  //XmlRpc::setVerbosity(5);

  // Create the server socket on the specified port
  s.bindAndListen(port);

  // Wait for requests indefinitely
  s.work(-1.0);

  return 0;
}

