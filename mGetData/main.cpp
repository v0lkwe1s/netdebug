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

void initHttpServer();
void getStats();
void getNetStats();

int main(int argc, char** argv) {

	DbSqlite sql;
	sql.open();
	sql.insert("insert into user (username, password) values ('teste', 'teste')");
	sql.update("update user set password = 'root'");
	sql.select("select * from user");
	sql.remove("delete from user where id=2");
	sql.close();
	thread server(initHttpServer);
	thread system (getStats);
	thread net (getNetStats);
	
	for (;;){
		sleep(1);
	}
    return 0;
}

void getNetStats(){
	Str s;
	NetStats netStats; 
	for (;;) {
		string comm = s.currentPath();
			comm+= "/web/json/iface.json";
		s.createFileText(netStats.getIfaces(), comm);
		sleep(1);
	}
	s.~Str();
}

void initHttpServer(){
	Str s;
	string comm = "http-server -c 1 -p 8800 "; 
		comm+= s.currentPath();
		comm+= "/web";
		cout << "server\n";
	system(comm.c_str());
	s.~Str();
}
void getStats(){
	Str s;
	GetSystemConfiguration g;
	for (;;) {
		string comm = s.currentPath();
			comm+= "/web/json/config.json";
		s.createFileText(g.getAll(), comm);
		sleep(1);
	}
	g.~GetSystemConfiguration();
	s.~Str();
}