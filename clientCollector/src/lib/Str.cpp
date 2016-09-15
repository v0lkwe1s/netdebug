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

vector<string> Str::split(string str, char delimiter) {
	vector<string> internal;
	stringstream ss(str); // Turn the string into a stream.
	string tok;
        
	while(getline(ss, tok, delimiter)) {
	  internal.push_back(tok);
	}
	return internal;
}

string Str::subString(string t, string s) {
    std::string::size_type i = t.find(s);
    if (i != std::string::npos)
        t.erase(i, s.length());
    return t;
}

string Str::getFileText(string file) {
	string line;
	string text;
    ifstream myfile(file.c_str());
	if (myfile.is_open()) {
            while (!myfile.eof()) {
                getline(myfile, line);
                text+= line+"\n";
            }
        myfile.close();
	} else text = "Err";
	return text;
}

string Str::getCurrentPath(){
	char cwd[1024];
	string path = getcwd(cwd, sizeof(cwd));
	return path;
}

//para pegar uma linha que contenha um valor em especifico
//Essa função funciona?
//Está sendo usada?
//string Str::getLine(string file) {
//    string line;
//    ifstream myfile(file.c_str());
//    if (myfile.is_open()) {
//        while (!myfile.eof()) {
//            getline(myfile, line);
//            return line;
//        }
//        myfile.close();
//    } else return "Err";
//}

string Str::numberToStr(double n) {
    stringstream ss;
	ss << n;
	//string str = ;
	return ss.str();
}

void Str::createFileText(string text, string file){
	ofstream out; 
	out.open(file.c_str());
	out << text; 
	out.close(); 
}

string Str::replace(string& subject, const string& search, const string& replace)
{
	size_t pos = 0;
	while ((pos = subject.find(search, pos)) != string::npos) {
		subject.replace(pos, search.length(), replace);
		pos += replace.length();
	}
	return subject;
}

string Str::getTimestamp()
{
	time_t t = time(0); // get time now
	struct tm * now = localtime(& t);
	string dt = (numberToStr(now->tm_year + 1900));
	dt += '-';
	dt += (numberToStr(now->tm_mon + 1));
	dt += '-';
	dt += numberToStr(now->tm_mday);
	dt += ' ';
	dt += numberToStr(now->tm_hour);
	dt += ':';
	dt += numberToStr(now->tm_min);
	dt += ':';
	dt += numberToStr(now->tm_sec);
	return dt;
}
