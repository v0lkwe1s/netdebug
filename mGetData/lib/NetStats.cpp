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
//De acordo com a documentação do arp, recomenda-se utilizar o ip neigh para verificar 
// a tabela arp. neste caso estou trazendo todas as conexoes, mas da para filtrar adicionando
// um nud ficando o comando -> ip neighbour show nud reachable
string NetStats::getArpTable()
{
	string comm = "ip neighbour show | awk 'NR>1 {print "
		 "\"{\\"
		 "\"host\\""\": \\""\"\" $1 \"""\\""""\","
		 "\\""\"mac\\""\": \\""\"\" $5 \"""\\""""\","
		 "\\""\"iface\\""\": \\""\"\" $3 \"""\\""""\""
		 "\\""\"state\\""\": \\""\"\" $6 \"""\\""""\""
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
	//remove as quebras de linha para enviar tudo via Socket
	json = s.replace(json,"\n\0"," ");
	//Adiciona quebra de linha no final do arquivo, que é para o cliente socket
	// saber que terminou a string
	json += "]}\n\0";
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
	string json = "{\"interfaces\":[";
	while (fgets(buff, sizeof(buff), in) != NULL) {
		json += buff;
	}
	pclose(in);
	json[(strlen(json.c_str()) - 2)] = ' ';
	json += "]}";
	return json;
}

