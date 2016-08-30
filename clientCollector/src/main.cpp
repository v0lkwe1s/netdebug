#include <cstdlib>
#include "modules/GetSystemConfiguration.h"
#include "lib/NetStats.h"
#include "lib/DbSqlite.h"
#include "lib/DiskStats.h"
#include <thread>
#include <stdio.h>
#include <stdlib.h>
#include <c++/4.9/bits/stl_bvector.h>
#include <c++/4.9/bits/stringfwd.h>
#include "lib/SocketException.h"
#include "lib/ServerSocket.h"
#include "modules/replicador/SendData.h"
#include "modules/SquidParser.h"

using namespace std;

Str s;
GetSystemConfiguration g;

void initHttpServer();
void getStats();
void getNetStats();
void getFileSystemInfo();
void getArpTable();
void serverSocket();
void proxy();

int main(int argc, char** argv) {
//	thread server(serverSocket);
//	thread serverHttp(initHttpServer);
//	//thread system (getStats);
//	thread net (getNetStats);
//	thread arp (getArpTable);
//	thread disk (getFileSystemInfo);
//	thread squidProxy (proxy);
	unsigned long int x =0;
	
	for (;;){
//		cout << "Node Server - " << server.get_id() << endl;
//		cout << "Net Stats   - " << net.get_id() << endl;
//		cout << "Disk Stats  - " << disk.get_id() << endl;
//		cout << "Arp Table   - " << arp.get_id() << endl;
//		cout << "squid       - " << squidProxy.get_id() << endl;
		//cout << "All Stats   - " << system.get_id() << endl;
	sleep(30);
	}
    return 0;
}
void proxy(){
	try {
		SquidParser sp;
		for (;;) {
			string comm = s.getCurrentPath();
				comm+= "/web/json/squid.json";
			s.createFileText(sp.toJson(),comm);
			sleep(3);
		}
		sp.~SquidParser();
	} catch (exception& e) {
		cout << e.what() << endl;
	}
}
void getArpTable(){
		try {
		NetStats netStats; 
		for (;;) {
			string comm = s.getCurrentPath();
				comm+= "/web/json/arp.json";
			s.createFileText(netStats.getArpTable(),comm);
			sleep(10);
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
			string comm = s.getCurrentPath();
				comm+= "/web/json/iface.json";
			s.createFileText(netStats.getIfaces(), comm);
			sleep(10);
		}
	} catch (const std::bad_alloc&) {
		cout << "getNetStats" << endl;
	}	
}
void initHttpServer(){
	try {
		string comm = "http-server -s -c 1 -p 8800 "; 
			comm+= s.getCurrentPath();
			comm+= "/web";
			cout << "server\n";
		system(comm.c_str());
	} catch (const std::bad_alloc&) {
		cout << "initHttpServer" << endl;
	}	
}
void getStats(){
	try {
		for (;;) {
			DbSqlite db;
			db.open("Database/netdebug.db");
			string comm = s.getCurrentPath();
				comm+= "/web/json/config.json";
			s.createFileText(g.getAll(), comm);
			try {
				string sql ="insert into stats (date, json) values ('";
				sql+= s.getTimestamp().c_str();
				sql+= "', '";
				sql+= g.getAll();
				sql+= "')";
				db.crud(sql.c_str());
				g.~GetSystemConfiguration();
				sleep(1);
			} catch (const std::bad_alloc& e) {
				cout << e.what() << endl;
			}		
			SendData sd;
			vector<GenericClass*> disk;
			string sql = "select * from stats";
			disk = sd.getFromDb(db, sql.c_str());
			sd.~SendData();
			db.~DbSqlite();
			sleep(3);
		}
	} catch (const std::bad_alloc& e) {
		cout << e.what() << endl;
	}	
}
void getFileSystemInfo(){
	DiskStats ds; 
	for (;;) {
		sleep(2);
		try {
			DbSqlite db;
			db.open("Database/netdebug.db");
			string comm = s.getCurrentPath();
				comm+= "/web/json/disk.json";
			s.createFileText(ds.getFileSystems(), comm);
			try {
				string sql ="insert into disk (date, json) values ('";
				sql+= s.getTimestamp().c_str();
				sql+= "', '";
				sql+= ds.getFileSystems();
				sql+= "')";
				db.crud(sql.c_str());
				g.~GetSystemConfiguration();
				sleep(1);
			} catch (const std::bad_alloc& e) {
				cout << e.what() << endl;
			}		
			SendData sd;
			vector<GenericClass*> disk;
			string sql = "select * from disk";
			disk = sd.getFromDb(db, sql.c_str());
			sd.~SendData();
			db.~DbSqlite();
		} catch (exception& e) {
			cout << e.what() << endl;
		}
	}
}
void serverSocket(){
	try {
		ServerSocket server(30000);
		NetStats netStats;
		while (true){
			ServerSocket new_sock;
			server.accept (new_sock);
			try {
				while (true){
					string data;
					new_sock >> data;
					if (data.find("HTTP")) {
						cout << "browser" << endl;
						data = "HTTP/1.1 200 OK\r\n";
						data+= "Content-Type: application/json\r\n";
						data+= "Connection: close\r\n\r\n";
						//este break é utilizado para que os navegadores não fiquem
						//aguardando o fim do cabeçalho
						data+= netStats.getArpTable().c_str();
						new_sock << data;
						break;
					}
					data = netStats.getArpTable().c_str();
					new_sock << data;
				}
			}
			catch (SocketException&) {}
			netStats.~NetStats();
		}
	} catch (SocketException& e) {
      std::cout << "Exception was caught:" << e.description() << "\nExiting.\n";
    }
}