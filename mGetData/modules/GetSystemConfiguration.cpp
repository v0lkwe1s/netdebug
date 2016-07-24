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

#include <memory>
#include "GetSystemConfiguration.h"

GetSystemConfiguration::GetSystemConfiguration() {
}

GetSystemConfiguration::GetSystemConfiguration(const GetSystemConfiguration& orig) {
}

GetSystemConfiguration::~GetSystemConfiguration() {
}

string GetSystemConfiguration::getAll() {
	Str s;
	string search = "}{";
	string replace = ",";
	string buffer = getHost().c_str();
	buffer+= getCpuInfo();
	string json = s.replace(buffer, search, replace);
//	json[(strlen(json.c_str())-1)] = ' ';
	buffer = json;
	buffer+= getDiskInfo();
	json = s.replace(buffer, search, replace);
	buffer = json;
	buffer+=getMemInfo();
	json = s.replace(buffer, search, replace);
	buffer+=getCpuLoad();
	json = s.replace(buffer, search, replace);
	buffer+=getMemInfo();
	json = s.replace(buffer, search, replace);
	buffer+=getProcessList();
	json = s.replace(buffer, search, replace);
	return json;
}

string GetSystemConfiguration::getCpuInfo() {
	Str s;
	string sysReq = "lscpu  | awk -F: '{print ""\"\\""\"\"$1\"""\\\": ""\\\"\"$2\"""\\\""",\"""}' > /tmp/getCpu";
	system(sysReq.c_str());
	
	string getCpuInfo = s.getFileText("/tmp/getCpu");
	getCpuInfo[(strlen(getCpuInfo.c_str())-1)] = ' ';
	string cpuInfo = "{\"cpuInfo\":{" + getCpuInfo  + "}}";
	string nulls = ",\" \": \"\",";
	
	string n = "},{";
	string json = s.replace(cpuInfo, nulls, n);
	s.~Str();
	return json;
}

string GetSystemConfiguration::getProcessList(){
	Str s;
//	string sysReq = "ps --no-headers -eo  \"{ \\""\"pid\\""\" : %p, "
//		"\\""\"user\\""\" : \\""\"%U\\""\","
//		"\\""\"tty\\""\" : \\""\"%y\\""\", "
//		"\\""\"time\\""\" : \\""\"%x\\""\","
//		"\\""\"command\\""\" : \\""\"%c\\""\", "
//		"\\""\"mem\\""\" : \\""\"%z\\""\", "
//		//"\\""\"args\\""\" : \\""\"%a\\""\","
//		"\\""\"cpu\\""\" : %C},\" > /tmp/ps";
	string sysReq = "ps --no-headers -aux | awk '{print\"{ \\""\"pid\\""\" : \"$2, \", "
		"\\""\"user\\""\" : \\""\" \" $1 \" \\""\","
		"\\""\"cpu\\""\" : \"  $3  \","
		"\\""\"mem\\""\" : \"  $4  \","
		"\\""\"vsz\\""\" : \"  $5  \","
		"\\""\"rss\\""\" : \"  $6  \","
		"\\""\"tty\\""\" : \\""\" \" $7 \" \\""\","
		"\\""\"stat\\""\" : \\""\" \" $8 \" \\""\","
		"\\""\"start\\""\" : \\""\" \" $9 \" \\""\","
		"\\""\"time\\""\" : \\""\" \" $10 \" \\""\","
		"\\""\"command\\""\" : \\""\" \" $11 \" \\""\"},"
		 "\"}' > /tmp/ps";
	system(sysReq.c_str());
	string json = s.getFileText("/tmp/ps");
	json[(strlen(json.c_str())-1)] = ' ';
	const string processList = "{\"Proccess\":[" + json  + "]}";
	s.~Str();
	return processList;
}

string GetSystemConfiguration::getDiskInfo(){
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
	string diskInfo = "{\"Disk\":[" + json  + "]}";
	s.~Str();
	return diskInfo;
}

string GetSystemConfiguration::getMemInfo(){
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
	s.~Str();
	return jSon;
}

string GetSystemConfiguration::getCpuLoad(){
	//pega os valores do /proc/stat 
	//Definir o calculo de uso de cpu
	
	Str s;
	string json;
	long double a[4], b[4], loadavg;
	FILE *fp;
	char dump[50];
	
	fp = fopen("/proc/stat","r");
	fscanf(fp,"%*s %Lf %Lf %Lf %Lf",&a[0],&a[1],&a[2],&a[3]);
	fclose(fp);
	sleep(1);

	fp = fopen("/proc/stat","r");
	fscanf(fp,"%*s %Lf %Lf %Lf %Lf",&b[0],&b[1],&b[2],&b[3]);
	fclose(fp);

	loadavg = ((b[0]+b[1]+b[2]) - (a[0]+a[1]+a[2])) / ((b[0]+b[1]+b[2]+b[3]) - (a[0]+a[1]+a[2]+a[3]));
	loadavg = loadavg *100;
	
	json = "{\"Load\": {\"cpu\": " + s.numberToStr((double) loadavg) + "}}";
	s.~Str();
	return json;
}

string GetSystemConfiguration::getHost(){
	Str s;
	string sysReq = "uname -n > /tmp/getHostname";
	system(sysReq.c_str());
	string hostname = s.getFileText("/tmp/getHostname");
	sysReq = "uname -sv > /tmp/getkernel";
	system(sysReq.c_str());
	string kernel = s.getFileText("/tmp/getkernel");
	string parse = "{\"Host\" :{\"hostname\" : \"" + hostname + "\","
		"\"kernel\" : \"" + kernel + "\"}}";
	s.~Str();
	return parse;
}
