// FileClient.cpp : A simple xmlrpc client. Usage: FileClient serverHost serverPort xmlfile
// Reads an xmlrpc request from the specified xmlfile and calls the method on the server.
// 
// Link against xmlrpc lib and whatever socket libs your system needs (ws2_32.lib on windows)

#include "XmlRpc.h"
#include <iostream>
#include <fstream>
#include <stdlib.h>

using namespace XmlRpc;

std::string parseRequest(std::string const& xml, XmlRpcValue& params);

//#define TEST_RESPONSE_PARSING 1 // To test parsing of server response xml from a file

class TestParseResponseClient : public XmlRpcClient
{
public:
  TestParseResponseClient(std::string const& file)
    : XmlRpcClient("", 0)
    , _file(file)
  {}

  // Make parseResponse public
  virtual bool parseResponse(XmlRpcValue& result)
  {
    std::ifstream infile(_file.c_str());
    if (infile.fail())
    {
      std::cerr << "Could not open file '" << _file << "'.\n";
      return false;
    }

    infile.seekg(0L, std::ios::end);
    std::streampos nb = infile.tellg();
    infile.clear();
    infile.seekg(0L);
    char* b = new char[size_t(nb)+1];
    infile.read(b, nb);
    b[nb] = 0;
    _header = b;
    delete [] b;

    return XmlRpcClient::parseHeader() && XmlRpcClient::parseResponse(result);
  }

private:
  std::string _file;
};


int main(int argc, char* argv[])
{
#if TEST_RESPONSE_PARSING
  if (argc != 2)
  {
    std::cerr << "Usage: FileClient responseXmlFile\n";
    return -1;
  }
  TestParseResponseClient c(argv[1]);
  XmlRpcValue result;
  std::cout << "Reading response xml from " << argv[1] << std::endl;
  if (c.parseResponse(result))
    std::cout << result << "\n\n";
  else
    std::cout << "Error parsing response.\n\n";

#else

  if (argc != 4)
  {
    std::cerr << "Usage: FileClient serverHost serverPort requestXmlFile\n";
    return -1;
  }
  int port = atoi(argv[2]);

  XmlRpc::setVerbosity(5);
  XmlRpcClient c(argv[1], port);

  //
  std::ifstream infile(argv[3]);
  if (infile.fail()) {
    std::cerr << "Could not open file '" << argv[3] << "'.\n";
    return -1;
  }

  // Suck in the file. This is a one-liner in good compilers (which vc++ 6 is not)...
  infile.seekg(0L, std::ios::end);
  std::streampos nb = infile.tellg();
  infile.clear();
  infile.seekg(0L);
  char* b = new char[size_t(nb)+1];
  infile.read(b, nb);
  b[nb] = 0;

  std::cout << "Read file.\n";

  // Find the methodName and parse the params
  std::string s(b);
  delete [] b;
  XmlRpcValue params;
  std::string name = parseRequest(s, params);

  if (name.empty()) {
    std::cerr << "Could not parse file\n";
    return -1;
  }

  for (;;)
  {
    XmlRpcValue result;
    std::cout << "Calling " << name << std::endl;
    if (c.execute(name.c_str(), params, result))
      std::cout << result << "\n\n";
    else
      std::cout << "Error calling '" << name << "'\n\n";
    std::cout << "Again? [y]: ";
    std::string ans;
    std::cin >> ans;
    if (ans != "" && ans != "y") break;
  }
#endif

  return 0;
}


// 
std::string
parseRequest(std::string const& xml, XmlRpcValue& params)
{
  const char METHODNAME_TAG[] = "methodName";
  const char PARAMS_TAG[] = "params";
  const char PARAM_TAG[] = "param";

  int offset = 0;   // Number of chars parsed from the request
  bool emptyTag;    // True if the <tag/> format was found
  std::string methodName;
  (void) XmlRpcUtil::parseTag(METHODNAME_TAG, xml, &offset, methodName);
  XmlRpcUtil::log(3, "XmlRpcServerConnection::parseRequest: parsed methodName %s.", methodName.c_str()); 

  if ( ! methodName.empty() && XmlRpcUtil::findTag(PARAMS_TAG, xml, &offset, &emptyTag))
  {
    int nArgs = 0;
    while (XmlRpcUtil::nextTagIs(PARAM_TAG, xml, &offset, &emptyTag))
    {
      if ( ! emptyTag)
      {
        std::cout << "Parsing arg " << nArgs+1 << std::endl;
        XmlRpcValue arg(xml, &offset);
        if ( ! arg.valid()) {
          std::cerr << "Invalid argument\n";
          return std::string();
        }
        (void) XmlRpcUtil::nextTagIsEnd(PARAM_TAG, xml, &offset);

        std::cout << "Adding arg " << nArgs+1 << " to params array." << std::endl;
        params[nArgs++] = arg;
      }
      else
      {
        std::cout << "Arg " << nArgs+1 << " is empty." << std::endl;
        params[nArgs++] = "";
      }
    }

    XmlRpcUtil::log(3, "XmlRpcServerConnection::parseRequest: parsed %d params.", nArgs); 

    (void) XmlRpcUtil::nextTagIsEnd(PARAMS_TAG, xml, &offset);
  }

  return methodName;
}
