/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   SquidParser.cpp
 * Author: williamvolkweis
 * 
 * Created on August 14, 2016, 8:45 PM
 */

#include "SquidParser.h"

SquidParser::SquidParser()
{
}

SquidParser::SquidParser(const SquidParser& orig)
{
}

string SquidParser::toJson()
{
	string json = "{\"proxy\":[";
	try {
	string comm = "tail -200 /var/log/squid3/access.log | awk -F \" \" '{print "
		 "\"{\\"
		 "\"dateTime\\""\": \\""\"\" $1 \"""\\""""\","
		 "\\""\"ttD\\""\": \\""\"\" $2 \"""\\""""\"," //time to Delivered
		 "\\""\"ip\\""\": \\""\"\" $3 \"""\\""""\"," //ip from client
		 "\\""\"state\\""\": \\""\"\" $4 \"""\\""""\"," // httpStatus
		 "\\""\"length\\""\": \\""\"\" $5 \"""\\""""\"," //length of the Content Gateway response to the client in bytes
		 "\\""\"method\\""\": \\""\"\" $6 \"""\\""""\"," //The client request method
		 "\\""\"url\\""\": \\""\"\" $7 \"""\\""""\"," //The client request canonical URL
		 "\\""\"auth\\""\": \\""\"\" $8 \"""\\""""\"," //The authenticated client's user name. A hyphen (-) means that no authentication was required.
		 "\\""\"route\\""\": \\""\"\" $9 \"""\\""""\"," //The proxy hierarchy route
		 "\\""\"contentType\\""\": \\""\"\" $10 \"""\\""""\"" //The proxy response content type
		 "},\"""}'";
	FILE *in;
	char buff[512];
	in = popen(comm.c_str(), "r");
	string json = "{\"proxy\":[";
	while (fgets(buff, sizeof(buff), in) != NULL) {
		json += buff;
	}
	pclose(in);
	json[(strlen(json.c_str()) - 2)] = ' ';
	//remove as quebras de linha para enviar tudo via Socket
	//json = s.replace(json, "\n\0", " ");
	//Adiciona quebra de linha no final do arquivo, que é para o cliente socket
	// saber que terminou a string
	
	} catch (exception& e){
		cout << "exception" << endl;
	}
	json += "]}\n\0";
	return json;
}

SquidParser::~SquidParser()
{
}

