/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   SendDataSerial.cpp
 * Author: williamvolkweis
 * 
 * Created on May 13, 2016, 11:07 PM
 */

#include "Serial.h"

Serial::Serial()
{
}

Serial::Serial(const Serial& orig)
{
}

Serial::~Serial()
{
}

void Serial::send(string str)
{
	string sysReq = "echo -n " + str + "> /dev/ttyACM1";
	system(sysReq.c_str());
}

void Serial::sendCpuUsage(float cpuUse)
{
	GetSystemConfiguration gsc;
	//system("echo \"" << gsc.getCpuLoad() << "\" /dev/ttyACM0");
}

