#ifndef GENERICCLASS_H
#define GENERICCLASS_H

using namespace std;

#include "../Str.h"

class GenericClass {
public : 
  GenericClass() {
  }

  GenericClass(unsigned long  int id, string date, string json) :
  id(id), date(date), json(json) {
  }

  string GetDate() const {
    return date;
  }

  void SetDate(string date) {
    this->date = date;
  }

  int GetId() const {
    return id;
  }

  void SetId(unsigned long int id) {
    this->id = id;
  }

  string GetJson() const {
    return json;
  }

  void SetJson(string json) {
    this->json = json;
  }
  
private :
  unsigned long int id;
  string date;
  string json;
  Str s;
};

#endif /* GENERICCLASS_H */

