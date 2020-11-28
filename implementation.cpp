//
// Created by mazur on 20.11.2020.
//

#include "implementation.h"

int upload(std::array<Person*, SZ>& per, const std::string& filename) {
    std::ifstream infile(filename, std::ios::binary | std::ios::ate);
    if (infile.is_open()) {
        if (infile.tellg() == 0) {
            std::cout << "\nFile is empty.\n";
            return 1;
        }
        infile.seekg(0);
        auto iter = per.begin();
        while (infile && iter != per.end()) {
            *iter = new Person;
            infile.read((char*)*iter++, sizeof(Person));
        }
        return 0;
    }
    else {
        std::cout << NAM::ERRMESS_OPEN;
        return -1;
    }
}
int download(std::array<Person*, SZ>& per, const std::string& filename) {
    std::ofstream outfile(filename, std::ios::binary);
    if (outfile.is_open()) {
        auto iter = per.begin();
        auto end = per.end();
        outfile.write((char*)*iter++, sizeof(Person));
        while (outfile && iter != end)
            outfile.write((char*)*iter++, sizeof(Person));
        return 0;
    }
    else {
        std::cerr << "\nFile isn't open.";
        return -1;
    }
}

void inputAndWrite(std::array<Person*, SZ>& per, std::ofstream& outfile) {
    outfile.open(NAM::nameOfFile, std::ios::binary);
    if (!outfile.is_open()) {
        std::cout << "\nSomething went wrong.\n";
        return;
    }
    std::cout << "File " << NAM::nameOfFile << " otkrit\n";
    std::for_each(per.begin(), per.end(), [&](Person* &p) {
        p = new Person;
        std::cin >> *p;
        outfile.write((char*)p, sizeof(Person));
    });
    outfile.close();
}


int sortWithLastName(std::array<Person*, SZ>& per, const std::string& filename) {
    bool up = upload(per, filename);
    if (!up) {
        std::sort(per.begin(), per.end(), [](Person* &p1, Person* &p2) {
            return std::strcmp(p1->lastName, p2->lastName) < 0;
        });
        std::cout << "Sorted array:\n";
        std::for_each(per.begin(), per.end(), [](Person* &p) { std::cout << *p << '\n'; });
        bool down = download(per, filename);
        if (!down)
            return 0;
        else {
            std::cerr << NAM::ERRMESS_WRITING;
            return 1;
        }
    }
    else {
        std::cerr << NAM::ERRMESS_READING;
        return -1;
    }
}
int sortWithAge(std::array<Person*, SZ>& per, const std::string& filename) {
    bool up = upload(per, filename);
    if (!up) {
        std::sort(per.begin(), per.end(), [](Person* &x, Person* &y) {
            return *x < *y;
        });
        std::cout << "Sorted array:\n";
        std::for_each(per.begin(), per.end(), [](Person* &p) {
            std::cout << *p << '\n';
        });
        bool down = download(per, filename);
        if (!down)
            return 0;
        else {
            std::cerr << NAM::ERRMESS_WRITING;
            return 1;
        }
    }
    else {
        std::cerr << NAM::ERRMESS_READING;
        return -1;
    }
}

int findWithMonth(std::array<Person*, SZ>& per, const std::string& filename, int &m) {
    bool exist = false;
    std::for_each(per.begin(), per.end(), [&](Person* &p){
        if (p->birthMonth == m) {
            std::cout << *p << '\n';
            exist = true;
        }
    });
    if (!exist) {
        std::cout << "\n\nNo human born in given month.\n";
    }
    return 0;
}

int eldestMan(std::array<Person*, SZ>& per, const std::string& filename) {
    bool up = upload(per, filename);
    if (!up) {
        Person* iter = per[0];
        std::for_each(per.begin(), per.end(), [&](Person* &p) {
            if (*p < *iter && !p->sex)
                iter = p;
        });
        std::cout << "The eldest man in the list: " << iter->lastName << std::endl;
        return 0;
    }
    else {
        std::cerr << NAM::ERRMESS_READING;
        return -1;
    }
}

int lastNames(std::array<Person*, SZ>& per, const std::string& filename, char letter) {
    bool up = upload(per, filename);
    if (!up) {
        letter = toupper(letter);
        std::cout << "The list of people whose last names start with " << letter << '\n';
        std::for_each(per.begin(), per.end(), [&letter](Person* &p){
           if (p->lastName[0] == letter)
               std::cout << *p << '\n';
        });
        return 0;
    }
    else {
        std::cerr << NAM::ERRMESS_READING;
        return -1;
    }
}