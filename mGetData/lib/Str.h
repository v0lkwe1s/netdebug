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
    string numberToStr(double n);
    string getFileText(string file);
    string subString(string t, string s);
    string getLine(string file);
    void createFileText(string text, string file);
    string replace(string& subject, const string& search,const string& replace);
    string currentPath();
    
    string getDateTime(){
      time_t t = time(0);   // get time now
      struct tm * now = localtime( & t );
      string dt = (numberToStr(now->tm_year + 1900)); 
        dt+='-';
        dt+=(numberToStr(now->tm_mon + 1));
        dt+='-';
        dt+=numberToStr(now->tm_mday);
        dt+=' ';
        dt+= numberToStr(now->tm_hour);
        dt+=':';
        dt+=numberToStr(now->tm_min);
        dt+=':';
        dt+=numberToStr(now->tm_sec);
      return dt;
    }
private:
    
};

#endif /* STR_H */

