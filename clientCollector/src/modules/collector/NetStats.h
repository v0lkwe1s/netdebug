#ifndef NETSTATS_H
#define NETSTATS_H

using namespace std;

#include <stddef.h>
#include "../../lib/Str.h"

class NetStats {
public:
  NetStats();
  NetStats(const NetStats& orig);
  virtual ~NetStats();
  
  string getIfaces();
  
  string getArpTable();
  
private:
  Str s;
};

#endif /* NETSTATS_H */

