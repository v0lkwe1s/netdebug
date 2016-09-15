#include <cstdlib>
#include <thread>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <vector>

#include "modules/collector/GetSystemConfiguration.h"
#include "lib/Str.h"
#include "modules/collector/SquidParser.h"
#include "modules/collector/NetStats.h"
#include "modules/socket/ServerSocket.h"
#include "modules/replicador/SendData.h"
#include "modules/collector/DiskStats.h"
#include "lib/database/DbSqlite.h"
#include "modules/socket/SocketException.h"
#include "lib/model/GenericClass.h"
#include "modules/VpnUsers.h"

using namespace std;

Str s;

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
//        thread system (getStats);
//	thread net (getNetStats);
//	thread arp (getArpTable);
//	thread disk (getFileSystemInfo);
//	thread squidProxy (proxy);
    VpnUsers vpn;  
    Users u;
    u.SetLogin("root");
    vpn.saveUser(u);
	unsigned long int x =0;
	for (;;){
            cout << x++ << endl;
//		cout << "Node Server - " << server.get_id() << endl;
//		cout << "Net Stats   - " << net.get_id() << endl;
//		cout << "Disk Stats  - " << disk.get_id() << endl;
//		cout << "Arp Table   - " << arp.get_id() << endl;
//		cout << "squid       - " << squidProxy.get_id() << endl;
		//cout << "All Stats   - " << system.get_id() << endl;
	sleep(60);
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
	} catch (exception& e) {
		cout << e.what() << endl;
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
	} catch (exception& e) {
		cout << e.what() << endl;
	}	
}
void initHttpServer(){
	try {
		string comm = "http-server -s -c 1 -p 8800 "; 
			comm+= s.getCurrentPath();
			comm+= "/web";
			cout << "server\n";
                        cout << comm.c_str() << endl;
		system(comm.c_str());
	} catch (exception& e) {
		cout << e.what() << endl;
	}	
}
void getStats(){
	try {
            GetSystemConfiguration g;
		for (;;) {
			DbSqlite db;
			db.open("Database/Netdebug.db");
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
				
				sleep(1);
			} catch (exception& e) {
                            cout << e.what() << endl;
			}		
			SendData sd;
			string sql = "select * from stats";
			sd.getFromDb(db, sql);
                       	sd.~SendData();
			db.~DbSqlite();
			sleep(3);
		}
            g.~GetSystemConfiguration();
	} catch (exception& e) {
		cout << e.what() << endl;
	}	
}
void getFileSystemInfo(){
	DiskStats ds; 
	for (;;) {
		try {
			DbSqlite db;
			db.open("Database/Netdebug.db");
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
				sleep(1);
			} catch (const std::bad_alloc& e) {
				cout << e.what() << endl;
			}		
                        sleep(1);
                        SendData sd;
			string sql = "select * from disk";
			sd.getFromDb(db, sql);
			sd.~SendData();
			db.~DbSqlite();
                        sleep(3600);
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
