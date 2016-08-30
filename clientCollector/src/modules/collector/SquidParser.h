#ifndef SQUIDPARSER_H
#define SQUIDPARSER_H

using namespace std;

#include "../../lib/Str.h"

class SquidParser {
public:
  SquidParser();
  SquidParser(const SquidParser& orig);
  virtual ~SquidParser();
  string toJson();
private:
  Str s;
};

#endif /* SQUIDPARSER_H */

