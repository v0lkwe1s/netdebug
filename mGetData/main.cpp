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

using namespace std;

/*
 * 
 */
void count(){
	int i = 0;
	for (;;){
		cout << i++ << endl;
		sleep(1);
	}
}

int main(int argc, char** argv) {
	Serial serial;
	serial.setBaud(115200);
	serial.setTty("/dev/ttyACM0");
	GetSystemConfiguration gsc;
	std::thread up (count);
	for (;;){
		serial.send(gsc.getMemInfo());
		sleep(4);
		serial.send(gsc.getCpuLoad());
		sleep(4);
	}
	serial.~Serial();
    return 0;
}

