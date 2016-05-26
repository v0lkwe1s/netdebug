/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Serial.cpp
 * Author: williamvolkweis
 * 
 * Created on May 24, 2016, 8:43 PM
 */

#include "Serial.h"

Serial::Serial(){
}

Serial::Serial(const Serial& orig){
	this->baud = orig.baud;
	this->tty = orig.tty;
	Str s;
	string sysReq = "stty -F " + this->getTty() + " " +  s.numberToStr(this->getBaud());
	cout << sysReq << endl;
	system(sysReq.c_str());
}

Serial::~Serial(){
}

void Serial::setTty(string tty){
	this->tty = tty;
}

void Serial::setBaud(unsigned int baud){
	this->baud = baud;
}

string Serial::getTty() const{
	return tty;
}

unsigned int Serial::getBaud() const{
	return baud;
}

void Serial::send(string text){
	string sysReq = "echo \"" + text + "\" > " + this->getTty();
	cout << sysReq << endl;
	system(sysReq.c_str());
}
