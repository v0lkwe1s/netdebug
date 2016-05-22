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
#include "Serial.h"

using namespace std;


GetSystemConfiguration::GetSystemConfiguration() {
}

GetSystemConfiguration::GetSystemConfiguration(const GetSystemConfiguration& orig) {
}

GetSystemConfiguration::~GetSystemConfiguration() {
}

void GetSystemConfiguration::getCpuInfo() {
	Str s;
	string sysReq = "lscpu  | awk -F: '{print ""\"\\""\"\"$1\"""\\\": ""\\\"\"$2\"""\\\""",\"""}' > /tmp/getCpu";
	system(sysReq.c_str());
	
	string getCpuInfo = s.getFileText("/tmp/getCpu");
	getCpuInfo[(strlen(getCpuInfo.c_str())-1)] = ' ';
	string cpuInfo = "{\"cpuInfo\":[{" + getCpuInfo  + "}]}";
	string nulls = ",\" \": \"\",";
	
	string n = "},{";
	cout << s.replace(cpuInfo, nulls, n) << endl;
	string json = s.replace(cpuInfo, nulls, n);
	s.createFileText(json.c_str(), "/var/www/html/netdebug/json/cpuInfo.json");
	s.~Str();
}

void GetSystemConfiguration::getProcessList(){
	Str s;
	string sysReq = "ps --no-headers -eo  \"{ \\""\"pid\\""\" : %p, "
		"\\""\"user\\""\" : \\""\"%U\\""\","
		"\\""\"tty\\""\" : \\""\"%y\\""\", "
		"\\""\"time\\""\" : \\""\"%x\\""\","
		"\\""\"command\\""\" : \\""\"%c\\""\", "
		//"\\""\"args\\""\" : \\""\"%a\\""\","
		"\\""\"cpu\\""\" : %C},\" > /tmp/ps";
//	cout << sysReq << endl;
	system(sysReq.c_str());
	string json = s.getFileText("/tmp/ps");
	json[(strlen(json.c_str())-1)] = ' ';
	const string diskInfo = "{\"Proccess\":[" + json  + "]}";
	s.createFileText(diskInfo, "/var/www/html/netdebug/json/ps.json");
	s.~Str();
}


void GetSystemConfiguration::getDiskInfo(){
	Str s;
	string sysReq = "df -Ph |  awk 'NR>1 {print "
		"\"{\\"
		"\"fs\\""\": \\""\"\" $1 \"""\\""""\","
		"\\""\"size\\""\": \\""\"\" $2 \"""\\""""\","
		"\\""\"used\\""\": \\""\"\" $3 \"""\\""""\","
		"\\""\"available\\""\": \\""\"\" $4 \"""\\""""\","
		"\\""\"used%\\""\": \\""\"\" $5 \"""\\""""\","
		"\\""\"mounted\\""\": \\""\"\" $6 \"""\\""""\""
		"},\"""}' > /tmp/diskInfo";
		system(sysReq.c_str());
		string json = s.getFileText("/tmp/diskInfo");
		json[(strlen(json.c_str())-1)] = ' ';
		const string diskInfo = "{\"Disk\":[" + json  + "]}";
		s.createFileText(diskInfo, "/var/www/html/netdebug/json/disk.json");
		s.~Str();
}

void GetSystemConfiguration::getMemInfo(){
	sysinfo (&si);
	Str s;
	string jSon;
	jSon = "{ \"Memory\":{\"totalRam\" : " + s.numberToStr((si.totalram /(1024*1024))) + ","
		"\"freeRam\" : " + s.numberToStr((si.freeram /(1024*1024))) + ","
		"\"buffers\" : " + s.numberToStr((si.bufferram /(1024*1024))) + ","
		"\"shared\" : " + s.numberToStr((si.sharedram)) + ","
		"\"totalSwap\" : " + s.numberToStr((si.totalswap /(1024*1024))) + ","
		"\"freeSwap\" : " + s.numberToStr((si.freeswap /(1024*1024))) + ","
		"\"procs\" : " + s.numberToStr(si.procs) + ""
		"}}";
	cout << jSon << endl;
	string use = s.numberToStr(si.totalram /(1024*1024) - (si.freeram /(1024*1024)));
	s.createFileText(jSon, "/var/www/html/netdebug/json/mem.json");
	s.~Str();
}

void GetSystemConfiguration::getCpuLoad(){
	Serial serial;
	
	Str s;
	size_t previous_idle_time=0, previous_total_time=0;
	for (size_t idle_time, total_time; get_cpu_times(idle_time, total_time); sleep(1)) {
		const float idle_time_delta = idle_time - previous_idle_time;
		const float total_time_delta = total_time - previous_total_time;
		const float utilization = 100.0 * (1.0 - idle_time_delta / total_time_delta);
		std::cout << utilization << '%' << std::endl;
		serial.send("Cpu " + s.numberToStr((int) utilization) + "%-");
		string json = "{\"Load\": {\"cpu\": " + s.numberToStr((int) utilization) + "}}";
		cout << json << endl;
		s.createFileText(json,"/var/www/html/netdebug/json/cpu.json");
		getMemInfo();
		getDiskInfo();
		previous_idle_time = idle_time;
		previous_total_time = total_time;
	}
	
	s.~Str();
	serial.~Serial();
}


