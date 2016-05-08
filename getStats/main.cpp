#include <iostream>
#include "library/ServerSocket.h"
using namespace std;

int main (int argc, char *argv[])
{
	ServerSocket s;
	s.init(45545);
	
	return 0;
}