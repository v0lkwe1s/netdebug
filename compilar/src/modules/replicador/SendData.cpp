#include "SendData.h"
#include "../socket/ClientSocket.h"
#include "../../lib/Socket.h"
#include "../../lib/SocketException.h"

SendData::SendData(){
}

vector<GenericClass*> SendData::getFromDb(DbSqlite& db, const char* table){
	string data = "";
	string sql= "";
	vector<GenericClass*> _class;
	try {
		ClientSocket client_socket ( "localhost", 58666 );
		std::string reply;
		if (client_socket.is_valid()) {
			client_socket << "get;"+ table +";lastId;\n";
			client_socket >> reply;
			sql = "select * from " + table + " where id > " + reply + "limit 50;";
			sql = s.replace(sql,"\n\0"," ");
			//((replaceSql == "") ? replaceSql = sql : replaceSql = replaceSql);
			_class = db.getContent(sql.c_str());
			if (_class.size() == 0) {
				client_socket << "done";
			} else {
				for (int i = 0; i < _class.size(); i++) {
					data += _class[i]->GetJson(); 
					data[(strlen(data.c_str()) - 1)] = ' ';
					data += ",\"host\" :[";
					data += "{\"id\" : " + s.numberToStr(_class[i]->GetId()) + ",";
					data += "\"date\" :\"" + _class[i]->GetDate() + "\",";
					data += "\"hostname\" : \"" +  + "\"}]};";
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