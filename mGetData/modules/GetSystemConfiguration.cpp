/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   GetSystemConfiguration.cpp
 * Author: williamvolkweis
 * 
 * Created on May 8, 2016, 6:27 PM
 */





#include "GetSystemConfiguration.h"



GetSystemConfiguration::GetSystemConfiguration() {
}

GetSystemConfiguration::GetSystemConfiguration(const GetSystemConfiguration& orig) {
}

GetSystemConfiguration::~GetSystemConfiguration() {
}

void GetSystemConfiguration::getCpuInfo() {
	Str s;
	//gera um arquivo com estrutura JSON 
	string sysReq = "cat /proc/cpuinfo  | awk -F: '{print ""\"\\""\"\"$1\" ""\\\": \\\"\"$2\"""\\\""",\"""}' > /tmp/getCpu";
	system(sysReq.c_str());
	//concatenado uso de const com string por causa do tamanho do arquivo.
	const string cpuInfo = "{" + s.getFileText("/tmp/getCpu") + "}";
	cout << cpuInfo << endl;
	s.~Str();
}

void GetSystemConfiguration::getDiskInfo(){
	Str s;
	//   \"" $1 "\"
	string sysReq = "df -Ph |  awk 'NR>1 {print "
		"\"{\\"
		"\"fs\\""\": \\""\"\" $1 \"""\\""""\","
		"\\""\"size\\""\": \\""\"\" $2 \"""\\""""\","
		"\\""\"used\\""\": \\""\"\" $3 \"""\\""""\","
		"\\""\"available\\""\": \\""\"\" $4 \"""\\""""\","
		"\\""\"used%\\""\": \\""\"\" $5 \"""\\""""\","
		"\\""\"mounted\\""\": \\""\"\" $6 \"""\\""""\""
		"},\"""}' > /tmp/diskInfo";
	cout << sysReq << endl;
	system(sysReq.c_str());
	//concatenado uso de const com string por causa do tamanho do arquivo.
	const string cpuInfo = "{" + s.getFileText("/tmp/diskInfo") + "}";
	cout << cpuInfo << endl;
	s.~Str();
}
//get Memory stats
void GetSystemConfiguration::getMemInfo(){
	sysinfo (&si);
	cout << "Memoria Total " << si.totalram << endl;
	cout << "Memoria em Uso " << ((si.totalram - si.freeram)) << endl;
	cout << "Ram Livre " << si.freeram  << endl;
	cout << "Processos " << si.procs << endl;
	cout << si.bufferram   << endl;
	cout << "Swap " << si.totalswap   << "MB" << endl;
}
