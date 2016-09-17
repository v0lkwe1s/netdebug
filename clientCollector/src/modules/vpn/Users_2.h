#ifndef USERS_H
#define USERS_H

using namespace std;

#include "../../lib/Str.h"

class Users {
public:
    Users();
    
    Users(const Users& orig);
    
    void saveUser(Users user);
    
    void delUser(Users user);
    void deactiveUser(Users user);
    
    Users(int id, string name, string login, string password, int group);

    int GetGroup() const;

    void SetGroup(int group);

    int GetId() const;

    void SetId(int id);

    string GetLogin() const;

    void SetLogin(string login);

    string GetName() const;

    void SetName(string name);

    string GetPassword() const;

    void SetPassword(string password);

    
    virtual ~Users();
private:
    Str s;
    int id;
    string name;
    string login;
    string password;
    int group;

};

#endif /* USERS_H */

