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
 * Adaptado de 
 * http://www.tutorialspoint.com/sqlite/sqlite_c_cpp.htm
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
  
  void open(char *database);
  
  void insert(char *sql);
  
  void select(char *sql);
  
  void update(char *sql);
  
  void remove(char *sql);
  
  void close();
  
private:
  sqlite3 *db;
  char *errMsg =0;
  int rc;
  Str s;
  const char* data = "Callback function called";
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

