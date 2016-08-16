/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   SquidParser.h
 * Author: williamvolkweis
 *
 * Created on August 14, 2016, 8:45 PM
 */

#ifndef SQUIDPARSER_H
#define SQUIDPARSER_H

using namespace std;

#include "../lib/Str.h"

class SquidParser {
public:
  SquidParser();
  SquidParser(const SquidParser& orig);
  virtual ~SquidParser();
  string toJson();
private:
  Str s;
};

#endif /* SQUIDPARSER_H */

