/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   DiskStats.h
 * Author: williamvolkweis
 *
 * Created on August 1, 2016, 7:39 PM
 */

#ifndef DISKSTATS_H
#define DISKSTATS_H
#include "Str.h"
class DiskStats {
public:
  DiskStats();
  DiskStats(const DiskStats& orig);
  virtual ~DiskStats();
  
  string getFileSystems(){
    string comm = "df -Ph |  awk 'NR>1 {print "
		"\"{\\"
		"\"fs\\""\": \\""\"\" $1 \"""\\""""\","
		"\\""\"size\\""\": \\""\"\" $2 \"""\\""""\","
		"\\""\"used\\""\": \\""\"\" $3 \"""\\""""\","
		"\\""\"available\\""\": \\""\"\" $4 \"""\\""""\","
		"\\""\"used%\\""\": \\""\"\" $5 \"""\\""""\","
		"\\""\"mounted\\""\": \\""\"\" $6 \"""\\""""\""
		"},\"""}'";
    
  FILE *in;
	char buff[512];
	in = popen(comm.c_str(), "r");
	string json = "{\"disk\":[";
	while (fgets(buff, sizeof(buff), in) != NULL) {
		json += buff;
	}
	pclose(in);
	json[(strlen(json.c_str()) - 2)] = ' ';
	json += "]}";

	return json;
 }
  
private:
  Str s;

};

#endif /* DISKSTATS_H */

