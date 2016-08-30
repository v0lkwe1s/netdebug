#ifndef DISKSTATS_H
#define DISKSTATS_H
#include "Str.h"
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

