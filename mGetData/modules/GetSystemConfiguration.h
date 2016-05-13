/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   GetSystemConfiguration.h
 * Author: williamvolkweis
 *
 * Created on May 8, 2016, 6:27 PM
 */

#ifndef GETSYSTEMCONFIGURATION_H
#define GETSYSTEMCONFIGURATION_H

#include "../lib/Str.h"
#include <sys/sysinfo.h>
#include <vector>
#include <fstream>
#include <iostream>
#include <numeric>
#include <unistd.h>


class GetSystemConfiguration {
public:
    struct sysinfo si;
    GetSystemConfiguration();
    GetSystemConfiguration(const GetSystemConfiguration& orig);
    void getCpuInfo();
    void getDiskInfo();
    void getMemInfo();
    void getCpuLoad();
    virtual ~GetSystemConfiguration();
    
    
    
private:
    
vector<size_t> get_cpu_times() {
    std::ifstream proc_stat("/proc/stat");
    proc_stat.ignore(5, ' '); // Skip the 'cpu' prefix.
    std::vector<size_t> times;
    for (size_t time; proc_stat >> time; times.push_back(time));
    return times;
}
 
bool get_cpu_times(size_t &idle_time, size_t &total_time) {
    const vector<size_t> cpu_times = get_cpu_times();
    if (cpu_times.size() < 4)
        return false;
    idle_time = cpu_times[3];
    total_time = accumulate(cpu_times.begin(), cpu_times.end(), 0);
    return true;
}
    
};

#endif /* GETSYSTEMCONFIGURATION_H */

