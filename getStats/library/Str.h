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
    string intToStr(int i);
    string getFileText(string file);
    string subString(string t, string s);
    string getLine(string file);
    char *strToChar(string str, int *csock);
    
private:
    
};

#endif /* STR_H */