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
  int getLastId(string table, string collumn, DbSqlite *ds){
    string sql = ("select " + collumn + " from " + table + " where " + collumn + " = (select max(" + collumn + ") from " + table + ");");
    vector<string> id = ds->getByName(sql.c_str(), "id");
    string g = (id[id.size()-1]);
    int setId = atoi(g.c_str());
    return setId;
  }
private:
  Str s;
  //pega o ultimo id da tabela
  

};

#endif /* SENDDATA_H */


