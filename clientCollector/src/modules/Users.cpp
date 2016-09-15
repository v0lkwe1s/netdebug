#include "Users.h"

Users::Users() {
}

Users::Users(const Users& orig) {
}

Users::Users(int id, string name, string login, string password, int group) :
    id(id), name(name), login(login), password(password), group(group) {
}

Users::~Users() {
}