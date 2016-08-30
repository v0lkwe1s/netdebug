/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   SendData.h
 * Author: williamvolkweis
 *
 * Created on August 13, 2016, 9:55 PM
 */

#ifndef SENDDATA_H
#define SENDDATA_H

#include "../../lib/Str.h"
#include "../../lib/DbSqlite.h"



class SendData {
public:
  SendData();
  SendData(const SendData& orig);
  virtual ~SendData();
  vector<GenericClass*> getFromDb(DbSqlite &db, const char* sql);
  
  
private:
  Str s;

  //pega o ultimo id da tabela
  

};

#endif /* SENDDATA_H */


