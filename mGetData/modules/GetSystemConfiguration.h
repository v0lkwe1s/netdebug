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


class GetSystemConfiguration {
public:
    struct sysinfo si;
    GetSystemConfiguration();
    GetSystemConfiguration(const GetSystemConfiguration& orig);
    void getCpuInfo();
    void getDiskInfo();
    void getMemInfo();
    virtual ~GetSystemConfiguration();

    
private:
    
};

#endif /* GETSYSTEMCONFIGURATION_H */

