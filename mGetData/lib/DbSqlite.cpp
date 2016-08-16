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

DbSqlite::DbSqlite(){
}

DbSqlite::DbSqlite(const DbSqlite& orig){
}

void DbSqlite::remove(const char* sql){
	rc = sqlite3_exec(db, sql, callback, (void*) data, &errMsg);
	(rc != SQLITE_OK) ? cout << errMsg : cout << "";
}

void DbSqlite::open(const char *database){
	rc = sqlite3_open(database, &db);
	(rc) ? cout << "Cant open Database" << endl : cout << "";
}

void DbSqlite::insert(const char* sql){
	try {
		rc = sqlite3_exec(db, sql, callback, 0, &errMsg);
		(rc != SQLITE_OK) ? cout << errMsg : cout << ""; 
	} catch (exception e){
		cout << e.what() << endl;
	}
}

void DbSqlite::selectAll(const char* sql){
	rc = sqlite3_exec(db, sql, callback, (void*)data, &errMsg);
	(rc != SQLITE_OK) ? cout << errMsg : cout << "";
}

void DbSqlite::update(const char* sql){
	rc = sqlite3_exec(db, sql, callback, (void*) data, &errMsg);
	(rc != SQLITE_OK) ? cout << errMsg : cout << "";
}

void DbSqlite::query(const char* sql){
	sqlite3_stmt *stmt;
	rc = sqlite3_exec(db, sql, callback, (void*) data, &errMsg);
	(rc != SQLITE_OK) ? cout << errMsg : cout << "";
	while ((rc = sqlite3_step(stmt)) == SQLITE_ROW) {
		for (int i = 0; i <= sqlite3_column_count(stmt) - 1; i++) {
			cout << sqlite3_column_text(stmt, i) << endl;
		}
	}
}

vector<string> DbSqlite::getByName(const char* sql, string name)
{
	sqlite3_stmt *stmt;
	rc = sqlite3_prepare_v2(db, sql, -1, &stmt, 0);
	(rc != SQLITE_OK) ? cout << errMsg : cout << "ok" << endl;
	vector<string> id;
	while ((rc = sqlite3_step(stmt)) == SQLITE_ROW) {
		for (int i = 0; i <= sqlite3_column_count(stmt) - 1; i++) {
			if (strcmp(sqlite3_column_name(stmt, i), name.c_str()) == 0) {
				string v((char *) sqlite3_column_text(stmt, i));
				id.push_back(v);
			}
		}
	}
	return id;
}

void DbSqlite::close()
{
	sqlite3_close(db);
}

DbSqlite::~DbSqlite(){
	close();
}

