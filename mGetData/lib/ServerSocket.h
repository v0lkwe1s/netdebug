/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ServerSocket.h
 * Author: williamvolkweis
 *
 * Created on August 6, 2016, 10:11 PM
 */

#ifndef SERVERSOCKET_H
#define SERVERSOCKET_H

#include "Socket.h"

class ServerSocket : private Socket{
public:

  ServerSocket ( int port );
  ServerSocket (){};
  virtual ~ServerSocket();

  const ServerSocket& operator << ( const std::string& ) const;
  const ServerSocket& operator >> ( std::string& ) const;

  void accept ( ServerSocket& );
private:

};

#endif /* SERVERSOCKET_H */

