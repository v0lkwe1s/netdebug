/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: williamvolkweis
 *
 * Created on May 8, 2016, 4:58 PM
 */

#include <cstdlib>
#include "modules/GetSystemConfiguration.h"
#include "lib/NetStats.h"
#include "lib/DbSqlite.h"
#include <thread>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

Str s;
GetSystemConfiguration g;

void initHttpServer();
void getStats();
void getNetStats();

int main(int argc, char** argv) {

//	DbSqlite sql;
//	sql.open("Database/db");
//	sql.remove("delete from user");
//	sql.insert("insert into user (username, password) values ('root', 'root')");
//	sql.update("update user set password = 'root'");
//	vector<string> value = sql.getByName("SELECT * FROM user", "password");
//	cout << "size " << value.size() << endl;
//	for (int i=0; i<=value.size(); i++){
//		cout << value[i] << endl;
//	}
//	sql.~DbSqlite();
	thread server(initHttpServer);
	thread system (getStats);
	thread net (getNetStats);
	
	int long long i =0;
	for (;;){
		DbSqlite db;
		db.open("Database/db");
		try {
			string sql ="insert into disk (date, json) values ('";
			sql+= s.getDateTime().c_str();
			sql+= "', '";
			sql+= g.getDiskInfo().c_str();
			sql+= "')";
			db.insert(sql.c_str());
			g.~GetSystemConfiguration();
			sleep(1);
		} catch (const std::bad_alloc& e) {
			cout << e.what() << endl;
		}		 
		db.close();
		//sleep(1);
		//s.~DbSqlite();
	}
    return 0;
}

void getNetStats(){
	try {
		NetStats netStats; 
		for (;;) {
			string comm = s.currentPath();
				comm+= "/web/json/iface.json";
			s.createFileText(netStats.getIfaces(), comm);
			sleep(1);
		}
	} catch (const std::bad_alloc&) {
		cout << "getNetStats" << endl;
		//return -1;
	}	
}

void initHttpServer(){
	try {
		string comm = "http-server -s -c 1 -p 8800 "; 
			comm+= s.currentPath();
			comm+= "/web";
			cout << "server\n";
		system(comm.c_str());
	} catch (const std::bad_alloc&) {
		cout << "initHttpServer" << endl;
		//return -1;
	}	
}

void getStats(){
	try {
		for (;;) {
			string comm = s.currentPath();
				comm+= "/web/json/config.json";
			s.createFileText(g.getAll(), comm);
			sleep(1);
		}
	} catch (const std::bad_alloc& e) {
		cout << e.what() << endl;
		//return -1;
	}	
}