/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   str.h
 * Author: williamvolkweis
 *
 * Created on March 27, 2016, 7:02 PM
 */
#include <stdio.h>
#include <vector>
#include <string.h>
#include <sstream>
#include <stdlib.h>
#include <cstdlib>
#include <iostream>
#include <fstream>

using namespace std;

#ifndef STR_H
#define STR_H

class Str {
public:
    Str();
    Str(const Str& orig);
    virtual ~Str();
    
    void split(const string& s, char c, vector<string>& v);
    string numberToStr(double n);
    string getFileText(string file);
    string subString(string t, string s);
    string getLine(string file);
    char *strToChar(string str, int *csock);
    
private:
    
};

#endif /* STR_H */

