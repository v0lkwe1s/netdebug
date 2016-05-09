/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: williamvolkweis
 *
 * Created on May 8, 2016, 4:58 PM
 */

#include <cstdlib>

#include "modules/GetSystemConfiguration.h"

using namespace std;

/*
 * 
 */
int main(int argc, char** argv) {
    GetSystemConfiguration gsc;
    gsc.getMemInfo();
    
    return 0;
}

