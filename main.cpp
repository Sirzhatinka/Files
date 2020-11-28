#include <iostream>
#include <array>
#include "implementation.h"
#include "Person.h"

// SZ declared in Person.h

void userInterface();
int main() {
    std::array<Person*, SZ> people{};

    int answer = 0;
    do {
        userInterface();
        std::cin >> answer;
        if (answer == 1) {
            bool success = upload(people, NAM::nameOfFile);
            if (!success) {
                std::cout << "Showing read objects:\n";
                std::for_each(people.begin(), people.end(), [](Person* &p) { std::cout << *p << '\n'; });
            }
        }
        else if (answer == 2) {
            std::ofstream outf;
            inputAndWrite(people, outf);
        }
        else if (answer == 3)
            sortWithLastName(people, NAM::nameOfFile);
        else if (answer == 4)
            sortWithAge(people, NAM::nameOfFile);
        else if (answer == 5) {
            int month;
            std::cout << "Push the interested month: ";
            std::cin >> month;
            bool success = upload(people, NAM::nameOfFile);
            if (!success)
                findWithMonth(people, NAM::nameOfFile, month);
            else
                std::cerr << "\nError while opening.\n";
        }
        else if (answer == 6)
           eldestMan(people, NAM::nameOfFile);
        else if (answer == 7) {
            char ch;
            std::cout << "Push the letter you're bothered by: ";
            std::cin >> ch;
            lastNames(people, NAM::nameOfFile, ch);
        }
        else if (!answer)
            break;
        else {
            std::cout << "\nIncorrect input. Try again.\n";
            continue;
        }
        std::for_each(people.begin(), people.end(), [](Person* &p) { delete p; });
    } while (true);
    return 0;
}


void userInterface() {
    std::cout << "\nChoose the action."
                 "\n1. Read the data from the file."
                 "\n2. Input data and write it into the file."
                 "\n3. sort the database with the last name."
                 "\n4. sort the database with the age."
                 "\n5. Output: who was born in given month."
                 "\n6. Output: the eldest man's last name."
                 "\n7. Output: last names that begin from the given letter."
                 "\n0. Exit.\n";
}