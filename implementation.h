//
// Created by mazur on 20.11.2020.
//

#ifndef FILES_IMPLEMENTATION_H
#define FILES_IMPLEMENTATION_H

#include <array>
#include <fstream>
#include "Person.h"

int upload(std::array<Person*, SZ>&, const std::string&);
int download(std::array<Person*, SZ>&, const std::string&);

void inputAndWrite(std::array<Person*, SZ>&, std::ofstream&);

int sortWithLastName(std::array<Person*, SZ>&, const std::string&);
int sortWithAge(std::array<Person*, SZ>&, const std::string&);

int findWithMonth(std::array<Person*, SZ>&, const std::string&, int&);

int eldestMan(std::array<Person*, SZ>&, const std::string&);
int lastNames(std::array<Person*, SZ>&, const std::string&, char);

namespace NAM {
    const std::string ERRMESS_WRITING = "\nThe data writing didn't happen.";
    const std::string ERRMESS_READING = "\nThe data reading didn't happen.";
    const std::string ERRMESS_OPEN = "\nImpossible to open";

    const std::string nameOfFile = "data.dat";
}


#endif //FILES_IMPLEMENTATION_H
