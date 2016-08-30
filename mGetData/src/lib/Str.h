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
#include <string>
#include <limits.h>
#include <unistd.h>

using namespace std;

#ifndef STR_H
#define STR_H

class Str {
public:
    Str();
    Str(const Str& orig);
    virtual ~Str();
    
    void split(const string& s, char c, vector<string>& v);
    vector<string> split(string str, char delimiter);
    string numberToStr(double n);
    string getFileText(string file);
    string subString(string t, string s);
    //string getLine(string file);
    void createFileText(string text, string file);
    string replace(string& subject, const string& search,const string& replace);
    string getCurrentPath();
    
    string getTimestamp();
private:
    
};

#endif /* STR_H */

