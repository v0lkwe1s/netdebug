// Definition of the ClientSocket class

#ifndef ClientSocket_class
#define ClientSocket_class

#include "../../lib/Socket.h"


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