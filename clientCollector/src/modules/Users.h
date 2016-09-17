#ifndef USERS_H
#define USERS_H

using namespace std;

class Users {
public:
    Users();
    
    Users(const Users& orig);
    
    void saveUser(Users user){
        cout << user.GetId() << endl;
    }
    
    void delUser(Users user){
        
    }
    void deactiveUser(Users user){
        
    }
    
    Users(int id, string name, string login, string password, int group);

    int GetGroup() const {
        return group;
    }

    void SetGroup(int group) {
        this->group = group;
    }

    int GetId() const {
        return id;
    }

    void SetId(int id) {
        this->id = id;
    }

    string GetLogin() const {
        return login;
    }

    void SetLogin(string login) {
        this->login = login;
    }

    string GetName() const {
        return name;
    }

    void SetName(string name) {
        this->name = name;
    }

    string GetPassword() const {
        return password;
    }

    void SetPassword(string password) {
        this->password = password;
    }

    
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

