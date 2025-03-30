// Month-over-Month 📊

#include <iostream>

int main() {
  double month1;
  double month2;

  std::cout << "Enter month1: ";
  std::cin >> month1;

  std::cout << "Enter month2: ";
  std::cin >> month2;

  double MoM = (month2 - month1) / month1 * 100;
  std::cout << "\nThe MoM change is " << MoM << "%";
}

// Cat Years 🐈

#include <iostream>

int main() {
  int catAge;
  int humanYears;

  std::cout << "Welcome to the Cat Years program! This only works for cats 3+ years old.\n\n";
  
  std::cout << "Enter your cat's age: ";
  std::cin >> catAge;

  humanYears = (catAge - 2) * 4 + 24;

  std::cout << "Your cat is " << humanYears << " years old in human years.\n";
}

// Coin Flip 🪙

#include <iostream>
#include <cstdlib> //include funct rand w/c for generating random numbers

int main() {
  srand(time(NULL)); //Seeds the random number generator with the current time.

  int num = std::rand() % 2;  // Generates a random number that's either 0 or 1

  if (num > 0.5) { 
    std::cout << "Heads\n";
  }
  else { 
    std::cout << "Tails\n";
  }
}


// Fever 🤒
#include <iostream>

int main() {
  // Write code here
  int temp;
  std::cout << "What is you temperature:";
  std::cin >> temp;

  //conditional statement in C++
  if (temp >= 100){
   std::cout << "You have a fever. 🤒";
  }
  else {
   std::cout << "You do not have a fever. 🕺";
  }
}
