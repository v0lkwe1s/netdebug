#ifndef ClientSocket_class
#define ClientSocket_class

using namespace std;

#include "Socket.h"
#include "SocketException.h"

class ClientSocket : private Socket
{
 public:

  ClientSocket ( std::string host, int port );
  virtual ~ClientSocket(){};

  const ClientSocket& operator << ( const std::string& ) const;
  const ClientSocket& operator >> ( std::string& ) const;
  
  int is_valid();
  
};

#endif