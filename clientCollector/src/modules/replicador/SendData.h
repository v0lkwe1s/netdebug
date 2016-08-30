#ifndef SENDDATA_H
#define SENDDATA_H

using namespace std;

#include <vector>

#include "../../lib/model/GenericClass.h"
#include "../socket/ClientSocket.h"
#include "../socket/ServerSocket.h"
#include "../socket/Socket.h"
#include "../socket/SocketException.h"
#include "../../lib/database/DbSqlite.h"

class SendData {
public:
  SendData();
  SendData(const SendData& orig);
  virtual ~SendData();
  vector<GenericClass*> getFromDb(DbSqlite &db, string table);
  
private:
  Str s;

};

#endif /* SENDDATA_H */


