/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   netStats.cpp
 * Author: williamvolkweis
 * 
 * Created on July 26, 2016, 10:35 PM
 */

#include "NetStats.h"

NetStats::NetStats()
{
}

NetStats::NetStats(const NetStats& orig)
{
}

NetStats::~NetStats()
{
}
//nesta seção de rede tento fazer algo mais profissional, não jogando a saida para
//um arquivo, e sim, lendo o retorno da função system inclusa em popen
string NetStats::getArpTable()
{
	string comm = "cat /proc/net/arp | awk 'NR>1 {print "
		 "\"{\\"
		 "\"host\\""\": \\""\"\" $1 \"""\\""""\","
		 "\\""\"mac\\""\": \\""\"\" $4 \"""\\""""\","
		 "\\""\"iface\\""\": \\""\"\" $6 \"""\\""""\""
		 "},\"""}'";

	FILE *in;
	char buff[512];
	in = popen(comm.c_str(), "r");
	string json = "{\"arp\":[";
	while (fgets(buff, sizeof(buff), in) != NULL) {
		json += buff;
	}
	pclose(in);
	json[(strlen(json.c_str()) - 2)] = ' ';
	json += "]}";

	return json;
}

string NetStats::getIfaces()
{
	string comm = "netstat -i |  awk 'NR>2 {print"
		 "\"{\\"
		 "\"iface\\""\": \\""\"\" $1 \"""\\""""\","
		 "\\""\"MTU\\""\": \\""\"\" $2 \"""\\""""\","
		 "\\""\"RX-OK\\""\": \\""\"\" $3 \"""\\""""\","
		 "\\""\"RX-ERR\\""\": \\""\"\" $4 \"""\\""""\","
		 "\\""\"RX-DRP\\""\": \\""\"\" $5 \"""\\""""\","
		 "\\""\"RX-OVR\\""\": \\""\"\" $6 \"""\\""""\","
		 "\\""\"TX-OK\\""\": \\""\"\" $7 \"""\\""""\","
		 "\\""\"TX-ERR\\""\": \\""\"\" $8 \"""\\""""\","
		 "\\""\"TX-DRP\\""\": \\""\"\" $9 \"""\\""""\","
		 "\\""\"TX-OVR\\""\": \\""\"\" $10 \"""\\""""\","
		 "\\""\"Flg\\""\": \\""\"\" $11 \"""\\""""\""
		 "},\"""}'";

	FILE *in;
	char buff[512];

	in = popen(comm.c_str(), "r");
	string json = "{\"arp\":[";
	while (fgets(buff, sizeof(buff), in) != NULL) {
		json += buff;
	}
	pclose(in);
	json[(strlen(json.c_str()) - 2)] = ' ';
	json += "]}";
	return json;
}

