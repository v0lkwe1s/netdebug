/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   netStats.h
 * Author: williamvolkweis
 *
 * Created on July 26, 2016, 10:35 PM
 */

#ifndef NETSTATS_H
#define NETSTATS_H

#include "Str.h"


class NetStats {
public:
  NetStats();
  NetStats(const NetStats& orig);
  virtual ~NetStats();
  string getLocalIp(){
    Str s;
    string ip;
    ip = "192.168.1.1";
    return ip;
  }
  string getArpTable();
  
private:

};

#endif /* NETSTATS_H */

