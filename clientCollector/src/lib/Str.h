#ifndef STR_H
#define STR_H

using namespace std;

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

