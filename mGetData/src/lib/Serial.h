/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Serial.h
 * Author: williamvolkweis
 *
 * Created on May 24, 2016, 8:43 PM
 */

#ifndef SERIAL_H
#define SERIAL_H

#include "../lib/Str.h"

using namespace std;

class Serial {
public:
    Serial();
    Serial(const Serial& orig);
    virtual ~Serial();
    
    void send(string text);
    void setBaud(unsigned int baud);
    void setTty(string tty);

    unsigned int getBaud() const;

    string getTty() const;

    
private:
    string tty;
    unsigned int baud;
    
};

#endif /* SERIAL_H */

