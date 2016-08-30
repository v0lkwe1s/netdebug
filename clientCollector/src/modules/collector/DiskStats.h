#ifndef DISKSTATS_H
#define DISKSTATS_H

using namespace std;

#include "../../lib/Str.h"

class DiskStats {
public:
  DiskStats();
  DiskStats(const DiskStats& orig);
  virtual ~DiskStats();
  
  string getFileSystems();
  
private:
  Str s;
};

#endif /* DISKSTATS_H */

