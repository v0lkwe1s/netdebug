#include "Str.h"
#include "ServerSocket.h"
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

char* Str::strToChar(string str, int *csock) {
    
    char *sendStr;
    int bytecount;
    sendStr = (char *) str.c_str();
    
    if((bytecount = send(*csock, sendStr, strlen(sendStr), 0))== -1){
        fprintf(stderr, "Error sending data %d\n", errno);
    }
    return sendStr;
}

string Str::intToStr(int i) {
    stringstream ss;
	ss << i;
	string str = ss.str();
	return str;
}

