#include "Users.h"

Users::Users() {
}

Users::Users(const Users& orig) {
}

Users::Users(int id, string name, string login, string password, int group) :
    id(id), name(name), login(login), password(password), group(group) {
}

void Users::saveUser(Users user) {
    cout << user.GetId() << endl;
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