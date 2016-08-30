#include "DiskStats.h"

DiskStats::DiskStats(){
}

DiskStats::DiskStats(const DiskStats& orig){
}

string DiskStats::getFileSystems(){
	string comm = "df -Ph |  awk 'NR>1 {print "
		 "\"{\\"
		 "\"fs\\""\": \\""\"\" $1 \"""\\""""\","
		 "\\""\"size\\""\": \\""\"\" $2 \"""\\""""\","
		 "\\""\"used\\""\": \\""\"\" $3 \"""\\""""\","
		 "\\""\"available\\""\": \\""\"\" $4 \"""\\""""\","
		 "\\""\"used%\\""\": \\""\"\" $5 \"""\\""""\","
		 "\\""\"mounted\\""\": \\""\"\" $6 \"""\\""""\""
		 "},\"""}'";

	FILE *in;
	char buff[512];
	in = popen(comm.c_str(), "r");
	string json = "{\"disk\":[";
	while (fgets(buff, sizeof(buff), in) != NULL) {
		json += buff;
	}
	pclose(in);
	json[(strlen(json.c_str()) - 2)] = ' ';
	json += "]}";

	return json;
}

DiskStats::~DiskStats(){
}