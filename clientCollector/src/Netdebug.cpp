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
#include "modules/vpn/VpnUsers.h"

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

    thread server(serverSocket);
 //   thread serverHttp(initHttpServer);
//    thread system (getStats);
//    thread net (getNetStats);
//    thread arp (getArpTable);
//    thread disk (getFileSystemInfo);
    //thread squidProxy (proxy);

	unsigned long int x =0;
	for (;;){
		//cout << x++ << endl;
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
    NetStats netStats; 
    try {
        for (;;) {
            string comm = s.getCurrentPath();
                comm+= "/web/json/arp.json";
            s.createFileText(netStats.getArpTable(),comm);
            sleep(10);
        }
    } catch (exception& e) {
        cout << e.what() << endl;
    }
    netStats.~NetStats();
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
                        sleep(30);
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
                    vector<string> line;
                    line = s.split(data, '\n');
                    cout << data << endl;
                    if (data.find("HTTP/1.1")) {
                        string path = s.getUrlPath(data);
						if (data.find("POST")) {
							for (int i = 0; i < line.size(); i++) {
								if (line[i].length() == 1) {
									if (i+1 < line.size()){
									cout << line[i+1]<< endl;
									}
								}
							}
						}
                        data = "HTTP/1.1 200 OK\r\n";
                        data+="Access-Control-Allow-Headers: Content-Type, X-Requested-With \r\n";
                        data+="Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS \r\n";
                        data+="Access-Control-Allow-Origin: * \r\n";
                        data+= "Content-Type: application/json\r\n";
						//data+= "HTTP/1.1 401 Access Denied \r\n";
						//data+= "WWW-Authenticate: Basic realm=\"My Server\" \r\n";
						//data+= "Content-Length: 0 \r\n";
                        data+= "Connection: close\r\n\r\n";
                        //password decript in shell
						//echo "cm9vdDp2MGxrd2Uxcw==" | base64 --decode
						
                        if (path == "/json/arp") {
                            data+= netStats.getArpTable().c_str();
                        } else if (path == "/json/ifaces") {
                            data+= netStats.getIfaces().c_str();
                        } else if (path == "/json/cpuinfo") {
                            GetSystemConfiguration g;
                            data+= g.getCpuInfo().c_str();
                        } else if (path == "/json/disk") {
                            DiskStats ds;
                            data+= ds.getFileSystems().c_str();
						} else if (path == "/json/all") {
                            GetSystemConfiguration g;
                            data+= g.getAll().c_str();
                        } else {
							data = "HTTP/1.1 200 OK\r\n";
							if (path.find(".css")  != std::string::npos){
								data+= "Content-Type: text/css\r\n";
							} else if (path.find("html")  != std::string::npos){
								data+= "Content-Type: text/html\r\n";
							} else {
								data+= "Content-Type: text/plain\r\n";
							}
							data+= "Connection: close\r\n\r\n";
							cout << data << endl;
							cout << path << endl;
                            data+= s.getFileText("web/" + path);
                        }
                    }
                    new_sock << data;
					data ="";
                    break;
                }
            } catch (SocketException&) {}
                netStats.~NetStats();
            }
	} catch (SocketException& e) {
        cout << e.description() << "\nExiting.\n";
    }
}