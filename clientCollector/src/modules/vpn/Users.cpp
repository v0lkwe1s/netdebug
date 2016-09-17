#include "Users.h"

Users::Users() {
}

Users::Users(const Users& orig) {
}

Users::Users(int id, string name, string login, string password, int group) :
    id(id), name(name), login(login), password(password), group(group) {
}

void Users::saveUser(Users user) {
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


void Users::delUser(Users user) {

}


void Users::deactiveUser(Users user) {

}


void Users::SetPassword(string password) {
    this->password = password;
}


void Users::SetName(string name) {
    this->name = name;
}


void Users::SetLogin(string login) {
    this->login = login;
}


void Users::SetId(int id) {
    this->id = id;
}


void Users::SetGroup(int group) {
    this->group = group;
}


string Users::GetPassword() const {
    return password;
}


string Users::GetName() const {
    return name;
}


string Users::GetLogin() const {
    return login;
}


int Users::GetId() const {
    return id;
}


int Users::GetGroup() const {
    return group;
}


Users::~Users() {
}