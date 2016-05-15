/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   SendDataSerial.h
 * Author: williamvolkweis
 *
 * Created on May 13, 2016, 11:07 PM
 */


#ifndef SERIAL_H
#define SERIAL_H

#include "GetSystemConfiguration.h"
using namespace std;

class Serial {
public:
    Serial();
    Serial(const Serial& orig);
    virtual ~Serial();
    void sendCpuUsage(float cpuUse);
    void send(string str);
private:

};

#endif /* SERIAL_H */

