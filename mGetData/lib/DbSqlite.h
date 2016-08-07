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
  
  vector<string> getByName(char *sql, string name){
    sqlite3_stmt *stmt;
    rc = sqlite3_prepare_v2(db, sql, -1, &stmt, 0);
    (rc != SQLITE_OK) ? cout << errMsg : cout << "ok" << endl;
    vector<string> id;
    while ((rc = sqlite3_step(stmt)) == SQLITE_ROW) {
      for(int i=0; i <= sqlite3_column_count(stmt) -1; i++){
        if (strcmp(sqlite3_column_name(stmt, i), name.c_str()) == 0){
          string v((char *)sqlite3_column_text(stmt, i));
          cout << v << endl;
          id.push_back(v);
        }
      }
    }
    return id;
  }
  
  void open(char *database);
  
  void insert(const char *sql);
  
  void selectAll(char *sql);
  
  void update(char *sql);
  
  void remove(char *sql);
  
  void query(char *sql);
  
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

