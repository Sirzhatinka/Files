//
// Created by mazur on 19.11.2020.
//

#include "Person.h"

std::ostream& operator<<(std::ostream& s, Person& p) {
    s << "The first name: " << p.firstName
      << "\nThe last name: " << p.lastName
      << "\nBirth date (dd/mm/yyyy): "
      << p.birthDay << '/' << p.birthMonth << '/' << p.birthYear
      << "\nSex: ";
    if (p.sex)
        s << "female";
    else
        s << "male";
    return s;
}
std::istream& operator>>(std::istream& s, Person& p) {
    std::cout << "Push the first name: ";
    s >> p.firstName;
    std::cout << "Push the last name: ";
    s >> p.lastName;
    std::cout << "The birth date as dd/mm/yyyy: ";
    char dummy;
    s >> p.birthDay >> dummy >> p.birthMonth >> dummy >> p.birthYear;
    while (true) {
        std::string paul;
        std::cout << "Push the sex (male/female): ";
        s >> paul;
        if (paul == "male") {
            p.sex = false;
            break;
        }
        else if (paul == "female") {
            p.sex = true;
            break;
        }
        else {
            std::cout << "Incorrect input.\n";
            continue;
        }
    }
    return s;
}
bool operator<(const Person& p1, const Person& p2) {
    if (p1.birthYear == p2.birthYear && p1.birthMonth == p2.birthMonth)
        return p1.birthDay < p2.birthDay;
    else if (p1.birthYear == p2.birthYear)
        return p1.birthMonth < p2.birthMonth;
    else
        return p1.birthYear < p2.birthYear;
}


void Person::set() {
    std::cout << "Push the first name: ";
    std::cin >> firstName;
    std::cout << "Push the last name: ";
    std::cin >> lastName;
    std::cout << "The birth date as dd/mm/yyyy: ";
    char dummy;
    std::cin >> birthDay >> dummy >> birthMonth >> dummy >> birthYear;
    while (true) {
        std::string paul;
        std::cout << "Push the sex (male/female): ";
        std::cin >> paul;
        if (paul == "male") {
            sex = false;
            break;
        }
        else if (paul == "female") {
            sex = true;
            break;
        }
        else {
            std::cout << "Incorrect input.\n";
            continue;
        }
    }
}