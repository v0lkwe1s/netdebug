/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   DbSqlite.cpp
 * Author: williamvolkweis
 * 
 * Created on July 30, 2016, 11:29 PM
 */

#include "DbSqlite.h"

DbSqlite::DbSqlite()
{
}

DbSqlite::DbSqlite(const DbSqlite& orig)
{
}

void DbSqlite::remove(char* sql){
	rc = sqlite3_exec(db, sql, callback, (void*) data, &errMsg);
	(rc != SQLITE_OK) ? cout << errMsg : cout << "ok";
}

void DbSqlite::open(){
	rc = sqlite3_open("Database/db", &db);
	(rc) ? cout << "Cant open Database" << endl : cout << "Success" << endl;
}

void DbSqlite::insert(char* sql){
	rc = sqlite3_exec(db, sql, callback, 0, &errMsg);
	(rc != SQLITE_OK) ? cout << errMsg : cout << "ok";
}

void DbSqlite::select(char* sql){
	rc = sqlite3_exec(db, sql, callback, (void*) data, &errMsg);
	(rc != SQLITE_OK) ? cout << errMsg : cout << "ok";
}

void DbSqlite::update(char* sql){
	rc = sqlite3_exec(db, sql, callback, (void*) data, &errMsg);
	(rc != SQLITE_OK) ? cout << errMsg : cout << "ok";
}

void DbSqlite::close()
{
	sqlite3_close(db);
	cout << "Sqlite say Bye Bye! :)" << endl;
}


DbSqlite::~DbSqlite()
{
}

