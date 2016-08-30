#include "DbSqlite.h"

DbSqlite::DbSqlite(){
}

DbSqlite::DbSqlite(const DbSqlite& orig){
}
void DbSqlite::open(const char *database){
	try {
	rc = sqlite3_open(database, &db);
	if (rc) {
		 //cout << sqlite3_errmsg(db) << endl;
		 throw "err";
	}
	} catch (exception& e){
		cout << e.what() <<endl;
	}
}

void DbSqlite::crud(const char* sql){
	try {
		rc = sqlite3_exec(db, sql, callback, 0, &errMsg);
		(rc != SQLITE_OK) ? cout << errMsg : cout << ""; 
	} catch (exception e){
		cout << e.what() << endl;
	}
}

vector<string*> DbSqlite::query(const char* sql){
	vector<string*> data;
	rc = sqlite3_exec(db, sql, callback, &data, &errMsg);
	(rc != SQLITE_OK) ? cout << errMsg : cout << "";
	return data;
}

vector<GenericClass*> DbSqlite::getContent(const char* sql){
	vector<GenericClass*> result;
	rc = sqlite3_exec(db, sql, classCallBack, &result, &errMsg);
	(rc != SQLITE_OK) ? cout << errMsg : cout << "";
	return result;
}

void DbSqlite::close(){
	sqlite3_close(db);
}

DbSqlite::~DbSqlite(){
	close();
}

