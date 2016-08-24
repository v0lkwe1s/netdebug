/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   GenericClass.h
 * Author: williamvolkweis
 *
 * Created on August 20, 2016, 7:25 PM
 */

#ifndef GENERICCLASS_H
#define GENERICCLASS_H

#include "Str.h"


class GenericClass {
public : 
  GenericClass() {
  }

  GenericClass(int id, string date, string json) :
  id(id), date(date), json(json) {
  }

  string GetDate() const {
    return date;
  }

  void SetDate(string date) {
    this->date = date;
  }

  int GetId() const {
    return id;
  }

  void SetId(int id) {
    this->id = id;
  }

  string GetJson() const {
    return json;
  }

  void SetJson(string json) {
    this->json = json;
  }
  
private :
  int id;
  string date;
  string json;
  Str s;
};

#endif /* GENERICCLASS_H */

