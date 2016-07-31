/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   DbSqlite.h
 * Author: williamvolkweis
 *
 * Created on July 30, 2016, 11:29 PM
 */

#ifndef DBSQLITE_H
#define DBSQLITE_H

#include <sqlite3.h>
#include <stdio.h>

#include "Str.h"


class DbSqlite {
public:
  DbSqlite();
  DbSqlite(const DbSqlite& orig);
  virtual ~DbSqlite();
  
 
  
  void open(){
    rc = sqlite3_open("Database/db", &db);
    (rc) ? cout << "Cant open Database" << endl : cout << "Success" << endl;
  }
  
  void insert(char *sql){
    rc = sqlite3_exec(db, sql, callback, 0, &errMsg);
    (rc != SQLITE_OK) ? cout << errMsg : cout << "ok";
  }
  void close(){
    sqlite3_close(db);
    cout << "Sqlite say Bye Bye! :)" << endl;
  }
private:
  sqlite3 *db;
  char *errMsg =0;
  int rc;
  Str s;
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

