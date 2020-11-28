#ifndef FILES_PERSON_H
#define FILES_PERSON_H

#include <string>
#include <cstring>
#include <iostream>

struct Person {
    char firstName[20];
    char lastName[20];
    bool sex;
    int birthDay, birthMonth, birthYear;
    void set();
};
std::ostream& operator<<(std::ostream&, Person&);
std::istream& operator>>(std::istream&, Person&);

bool operator<(const Person&, const Person&);

const int SZ = 5;

#endif //FILES_PERSON_H
