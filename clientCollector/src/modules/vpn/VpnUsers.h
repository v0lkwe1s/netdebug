#ifndef VPNUSERS_H
#define VPNUSERS_H

#include "Users.h"
#include "../../lib/Str.h"

using namespace std;

class VpnUsers {
public:
    VpnUsers();
    VpnUsers(const VpnUsers& orig);
    virtual ~VpnUsers();
    void saveUser(Users &user);
private:
    Str s;
    Users user;
    string sourceIp;
    string vpnIp;
};

#endif /* VPNUSERS_H */

