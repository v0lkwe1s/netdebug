/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   GetSystemConfiguration.h
 * Author: williamvolkweis
 *
 * Created on May 8, 2016, 6:27 PM
 */

#ifndef GETSYSTEMCONFIGURATION_H
#define GETSYSTEMCONFIGURATION_H



#include "../lib/Str.h"
#include <sys/sysinfo.h>
#include <vector>
#include <fstream>
#include <iostream>
#include <numeric>
#include <unistd.h>
#include <math.h>
#include "../lib/Serial.h"

using namespace std;


class GetSystemConfiguration {
public:
    
    GetSystemConfiguration();
    GetSystemConfiguration(const GetSystemConfiguration& orig);
    string getCpuInfo();
    string getDiskInfo();
    string getMemInfo();
    string getCpuLoad();
    string getProcessList();
    string getHost();
    string getAll();
    virtual ~GetSystemConfiguration();

private:
  const string eof = "}]}";
    struct sysinfo si;
    Serial serial;
    
};

#endif /* GETSYSTEMCONFIGURATION_H */

