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
//	thread system (getStats);
//	thread net (getNetStats);
//	thread arp (getArpTable);
//	thread disk (getFileSystemInfo);
//	thread squidProxy (proxy);
	unsigned long int x =0;
	
	for (;;){
	//	cout << i++ << endl;
		
	DbSqlite db;
	db.open("Database/netdebug.db");
	SendData sd;
	vector<GenericClass*> disk;
	string sql = "select * from disk";
	disk = sd.getFromDb(db, sql.c_str());
//	cout << disk.size() << endl;
//		for (int i = 0; i < disk.size(); i++) {
//			usleep(1000);
//			cout << "ID " << disk[i]->GetId() << " Date";
//			cout << disk[i]->GetDate() << " Json";
//			cout << disk[i]->GetJson();
//			cout << x++ << "  --  " << disk.size() << endl;
//		}
	sd.~SendData();
	db.~DbSqlite();
		
		
//		cout << "Node Server - " << server.get_id() << endl;
//		cout << "Net Stats   - " << net.get_id() << endl;
//		cout << "Disk Stats  - " << disk.get_id() << endl;
//		cout << "Arp Table   - " << arp.get_id() << endl;
//		cout << "squid       - " << squidProxy.get_id() << endl;
//		cout << "All Stats   - " << system.get_id() << endl;
		sleep(1);
	}
    return 0;
}
void proxy(){
	try {
		SquidParser sp;
		for (;;) {
			string comm = s.currentPath();
				comm+= "/web/json/squid.json";
			s.createFileText(sp.toJson(),comm);
			sleep(3);
		}
		sp.~SquidParser();
	} catch (const std::bad_alloc&) {
		cout << "squid" << endl;
	}
}
void getArpTable(){
		try {
		NetStats netStats; 
		for (;;) {
			string comm = s.currentPath();
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
			string comm = s.currentPath();
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
			comm+= s.currentPath();
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
			string comm = s.currentPath();
				comm+= "/web/json/config.json";
			s.createFileText(g.getAll(), comm);
			sleep(3);
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
			db.open("Database/netdebug.db");
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
			SendData s;
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
					cout << netStats.getArpTable() << endl;
					data = netStats.getArpTable().c_str();
					new_sock << data;
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