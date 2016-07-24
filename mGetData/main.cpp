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
#include <thread>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

void initHttpServer();
void getStats();

int main(int argc, char** argv) {
	
	thread server(initHttpServer);
	//thread stats (getStats);
	getStats();
    return 0;
}

void initHttpServer(){
	system("http-server -c 1 -p 8800 web");
}
void getStats(){
Str s;
	GetSystemConfiguration g;
	for (;;) {
		system(".");
		s.createFileText(g.getAll(), "/usr/bin/netdebug/web/json/config.json");
		sleep(1);
	}
	g.~GetSystemConfiguration();
	s.~Str();
}