#include <cstdlib>
#include "modules/GetSystemConfiguration.h"
#include "lib/NetStats.h"
#include "lib/DbSqlite.h"
#include "lib/DiskStats.h"
#include <thread>
#include <stdio.h>
#include <stdlib.h>
#include "lib/SocketException.h"
#include "lib/ServerSocket.h"

using namespace std;

Str s;
GetSystemConfiguration g;

void initHttpServer();
void getStats();
void getNetStats();
void getFileSystemInfo();
void getArpTable();
void serverSocket();

int main(int argc, char** argv) {

//	DbSqlite sql;
//	sql.open("Database/db");
//	sql.remove("delete from user");
//	sql.insert("insert into user (username, password) values ('root', 'root')");
//	sql.update("update user set password = 'root'");
//	vector<string> value = sql.getByName("SELECT * FROM user", "password");
//	cout << "size " << value.size() << endl;
//	for (int i=0; i<=value.size(); i++){
//		cout << value[i] << endl;
//	}
//	sql.~DbSqlite();
	thread server(serverSocket);
	thread system (getStats);
	thread net (getNetStats);
	thread arp (getArpTable);
	thread disk (getFileSystemInfo);
	
	unsigned long int i =0;
	for (;;){
		cout << i++ << endl;
		//cout << "Node Server - " << server.get_id() << endl;
		//cout << "Net Stats   - " << net.get_id() << endl;
		//cout << "Disk Stats  - " << disk.get_id() << endl;
		//cout << "Arp Table   - " << arp.get_id() << endl;
		//cout << "All Stats   - " << system.get_id() << endl;
		sleep(1);
	}
    return 0;
}
void getArpTable(){
		try {
		NetStats netStats; 
		for (;;) {
			string comm = s.currentPath();
				comm+= "/web/json/arp.json";
			s.createFileText(netStats.getArpTable(),comm);
			sleep(1);
		}
		netStats.~NetStats();
	} catch (const std::bad_alloc&) {
		cout << "getArpTable" << endl;
	}
}
void getNetStats(){
	try {
		NetStats netStats; 
		for (;;) {
			string comm = s.currentPath();
				comm+= "/web/json/iface.json";
			s.createFileText(netStats.getIfaces(), comm);
			sleep(1);
		}
	} catch (const std::bad_alloc&) {
		cout << "getNetStats" << endl;
	}	
}
void initHttpServer(){
	try {
		string comm = "http-server -s -c 1 -p 8800 "; 
			comm+= s.currentPath();
			comm+= "/web";
			cout << "server\n";
		system(comm.c_str());
	} catch (const std::bad_alloc&) {
		cout << "initHttpServer" << endl;
	}	
}

void getStats(){
	//Esta função com o decorrer do tempo está dando bad_alloc
	//Deve ser por causa das gambiarras que foram feitas pra gerar
	//o arquivo json, ou está estourando o tamanho maximo para alguma
	//variavel
	try {
		for (;;) {
			string comm = s.currentPath();
				comm+= "/web/json/config.json";
			s.createFileText(g.getAll(), comm);
			sleep(1);
		}
	} catch (const std::bad_alloc& e) {
		cout << e.what() << endl;
	}	
}
void getFileSystemInfo(){
	DiskStats ds; 
	for (;;) {
		try {
			DbSqlite db;
			db.open("Database/db");
			string comm = s.currentPath();
				comm+= "/web/json/disk.json";
			s.createFileText(ds.getFileSystems(), comm);
			try {
				string sql ="insert into disk (date, json) values ('";
				sql+= s.getDateTime().c_str();
				sql+= "', '";
				sql+= ds.getFileSystems();
				sql+= "')";
				db.insert(sql.c_str());
				g.~GetSystemConfiguration();
				sleep(1);
			} catch (const std::bad_alloc& e) {
				cout << e.what() << endl;
			}		 
		db.close();
		} catch (const std::bad_alloc&) {
			cout << "getDiskStats" << endl;
		}
		sleep(1);
	}
}

void serverSocket(){
	std::cout << "running....\n";
	try {
		ServerSocket server(30000);
		NetStats netStats;
		while (true){
			ServerSocket new_sock;
			server.accept (new_sock);
			try {
				while (true){
					
					std::string data;
					new_sock >> data;
					cout << data << endl;
					data = "HTTP/1.1 200 OK\r\n";
					//data+= "Content-Type: application/json\r\n";
					data+= "Connection: close\r\n\r\n";
						 //data+=netStats.getArpTable();
					cout << netStats.getArpTable() << endl;
					data = netStats.getArpTable().c_str();
					new_sock << data;
					
					break;
				}
			}
			catch (SocketException&) {}
			netStats.~NetStats();
		}
	}
	catch (SocketException& e) {
      std::cout << "Exception was caught:" << e.description() << "\nExiting.\n";
    }
}