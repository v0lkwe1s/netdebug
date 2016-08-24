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
#include "GenericClass.h"


class DbSqlite {
public:
  DbSqlite();
  DbSqlite(const DbSqlite& orig);
  virtual ~DbSqlite();
  
  vector<string> getByName(const char *sql, string name);
  
  void open(const char *database);
  
  void insert(const char *sql);
  
  void selectAll(const char *sql);
  
  void update(const char *sql);
  
  void remove(const char *sql);
  
  vector<string*> query(const char* sql);
  
  vector<GenericClass*> getContent(const char *sql){
    vector<GenericClass*> result;
    rc = sqlite3_exec(db, sql, classCallBack, &result, &errMsg);
    (rc != SQLITE_OK) ? cout << errMsg : cout << "";
    return result;
  }
  
  void close();
  
private:
  
  static int classCallBack(void *v, int argc, char **argv, char **ColName){
    vector<GenericClass*>* result = (vector<GenericClass*>*) v;
    GenericClass *c = new GenericClass();
    c->SetId(atoi(argv[0]));
    c->SetDate(argv[1]);
    c->SetJson(argv[2]);
    result->push_back(c);
    return 0;
  }
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

