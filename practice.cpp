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