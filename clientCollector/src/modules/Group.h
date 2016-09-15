#ifndef GROUP_H
#define GROUP_H

using namespace std;

#include "../lib/Str.h"

class Group {
public:
    
    Group();
    Group(const Group& orig);
    virtual ~Group();

private:
    Str s;
    
    int id;
    string groupName;
    string groupPermissions;
};

#endif /* GROUP_H */

