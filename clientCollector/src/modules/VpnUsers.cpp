#include "VpnUsers.h"

VpnUsers::VpnUsers() {
}

VpnUsers::VpnUsers(const VpnUsers& orig) {
}

void VpnUsers::saveUser(Users user) {

    string fileText = s.getFileText("/etc/ppp/chap-secrets");
    vector<string> line;
    char d = '\n';
    line = s.split(fileText, d);
    for (int i = 0; i < line.size(); i++) {
        if (line[i].find("#") > 0) {
            vector<string> collumn;
            collumn = s.split(line[i], '\t');
            for (int x = 0; x < collumn.size(); x++) {
                if (collumn[0].compare(user.GetLogin()) == 0) {
                    cout << "UPDATE USER " << user.GetLogin() << endl;
                } else {
                    cout << "INSERT USER " << user.GetLogin() << endl;
                }
                //cout << "linha " << i << " coluna " << x << " - " << collumn[x] << endl;
            }
        }
    }
}

VpnUsers::~VpnUsers() {
}

