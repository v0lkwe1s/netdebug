#ifndef DBSQLITE_H
#define DBSQLITE_H

using namespace std;

#include <sqlite3.h>
#include <stdio.h>
#include <vector>

#include "../../lib/Str.h"
#include "../../lib/model/GenericClass.h"

class DbSqlite {
public:
  DbSqlite();
  DbSqlite(const DbSqlite& orig);
  virtual ~DbSqlite();
  
  void open(const char *database);
  
  void crud(const char *sql);
  
  vector<string*> query(const char* sql);
  
  vector<GenericClass*> getContent(const char *sql);
  
  void close();
  
private:
  sqlite3 *db;
  char *errMsg =0;
  int rc;
  Str s;
  
  static int classCallBack(void *v, int argc, char **argv, char **ColName){
    vector<GenericClass*>* result = (vector<GenericClass*>*) v;
    GenericClass *c = new GenericClass();
    c->SetId(atoi(argv[0]));
    c->SetDate(argv[1]);
    c->SetJson(argv[2]);
    result->push_back(c);
    return 0;
  }
  const char* data = "";
  static int callback(void *NotUsed, int argc, char **argv, char **azColName){
    int i;
    for(i=0; i<argc; i++){
       printf("%s = %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
    }
    printf("\n");
    return 0;
  }
};

#endif /* DBSQLITE_H */

