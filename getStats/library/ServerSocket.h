#ifndef SERVERSOCKET_H
#define SERVERSOCKET_H


#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <stdio.h>
#include <netinet/in.h>
#include <resolv.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <pthread.h>
#include <ostream>

void* SocketHandler(void*);

class ServerSocket {
public:
    ServerSocket();
    ServerSocket(const ServerSocket& orig);
    virtual ~ServerSocket();
    int init(int host_port);
private:

};

#endif /* SERVERSOCKET_H */