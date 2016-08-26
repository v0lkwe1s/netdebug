/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   SendData.cpp
 * Author: williamvolkweis
 * 
 * Created on August 13, 2016, 9:55 PM
 */

#include "SendData.h"
#include "../socket/ClientSocket.h"
#include "../../lib/Socket.h"
#include "../../lib/SocketException.h"

SendData::SendData(){
}

vector<GenericClass*> SendData::getFromDb(DbSqlite& db, const char* sql){
	string replaceSql = "";
	string data = "";
	vector<GenericClass*> _class;
	try {
		ClientSocket client_socket ( "localhost", 58666 );
		std::string reply;
		if (client_socket.is_valid()) {
			client_socket << "get;disk;lastId\n";
			client_socket >> reply;
			replaceSql = "select * from disk where id > " + reply + "limit 50;";
			replaceSql = s.replace(replaceSql,"\n\0"," ");
			//((replaceSql == "") ? replaceSql = sql : replaceSql = replaceSql);
			_class = db.getContent(replaceSql.c_str());
			if (_class.size() == 0) {
				client_socket << "done";
			} else {
				for (int i = 0; i < _class.size(); i++) {
					data += _class[i]->GetJson(); 
					data[(strlen(data.c_str()) - 1)] = ' ';
					data += ",\"host\" :[";
					data += "{\"id\" : " + s.numberToStr(_class[i]->GetId()) + ",";
					data += "\"date\" :\"" + _class[i]->GetDate() + "\",";
					data += "\"hostname\" : \"hostname\"}]};";
				}
				data = s.replace(data,"\n\0"," ");
				data+="\n";
				client_socket << data;
				client_socket >> reply;
			}
		}
	} catch ( SocketException& e )	{
		std::cout << e.description() << "\n";
	}

	return _class;
}

SendData::SendData(const SendData& orig){
}

SendData::~SendData(){
}

