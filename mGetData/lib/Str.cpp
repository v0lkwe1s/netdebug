/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   str.cpp
 * Author: williamvolkweis
 * 
 * Created on March 27, 2016, 7:02 PM
 */

#include "Str.h"

Str::Str() {
}

Str::Str(const Str& orig) {
}

Str::~Str() {
}

void Str::split(const string& s, char c, vector<string>& v) {
    string::size_type i = 0;
    string::size_type j = s.find(c);
    while (j != string::npos) {
        v.push_back(s.substr(i, j - i));
        i = ++j;
        j = s.find(c, j);
        if (j == string::npos) {
            v.push_back(s.substr(i, s.length()));
        }
    }
}

string Str::subString(string t, string s) {
    std::string::size_type i = t.find(s);
    if (i != std::string::npos)
        t.erase(i, s.length());
    return t;
}

//Abre todo o arquivo de texto
string Str::getFileText(string file) {
	string line;
	string text;
        ifstream myfile(file.c_str());
	if (myfile.is_open()) {
            while (!myfile.eof()) {
                getline(myfile, line);
                text+= line;
            }
            myfile.close();
	} else text = "Err";
	return text;
}

//para pegar uma linha que contenha um valor em especifico
string Str::getLine(string file) {
    string line;
    ifstream myfile(file.c_str());
    if (myfile.is_open()) {
        while (!myfile.eof()) {
            getline(myfile, line);
            return line;
        }
        myfile.close();
    } else return "Err";
}


string Str::intToStr(int i) {
    stringstream ss;
	ss << i;
	string str = ss.str();
	return str;
}
