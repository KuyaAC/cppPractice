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

// Levels and Ranks 💎
#include <iostream>

int main() {
  // Write code here
  int levels;
  std::cout << "What is your current level? ";
  std::cin >> levels;

  if (levels < 6) {
    std::cout << "🥉 Bronze\n";
  }
  else if (levels < 11) {
    std::cout << "🥈 Silver\n";
  }
  else if (levels < 16) {
    std::cout << "🥇 Gold\n";
  }
  else if (levels < 21) {
    std::cout << "🏅 Platinum\n";
  }
  else {
    std::cout << "💎 Diamond\n";
  }
}

// Fortune Cookie 🥠
#include <iostream>
#include <cstdio>
#include <cstdlib>

int main() {
  // Write code here
  srand(time(NULL)); //To make sure every time you run the program, you get a new random number,

  int fortune = std::rand() % 50; //Generates a random number that's either 0-49

  std::cout <<"Your Number is: " << fortune << "\n";
  if (fortune = 10){
    std::cout << "Don't pursue happiness – create it.";
  }
  else if(fortune = 23){
    std::cout << "All things are difficult before they are easy.";
  }
  else if(fortune = 45){
    std::cout << "The early bird gets the worm, but the second mouse gets the cheese.";
  }
  else if(fortune = 0){
    std::cout << "Someone in your life needs a letter from you.";
  }
  else if(fortune = 31){
    std::cout << "The fortune you search for is in another cookie.";
  }
  else if(fortune = 12){
    std::cout << "Help! I'm being held prisoner in a Chinese bakery!";
  }
  else{
    std::cout << "🥠 The fortune you search for is in another cookie. ";
  }
}

// Voting 🗳️
#include <iostream>

int main() {
  // Write code here
  int age;
  bool citizen;
  bool registered;

  std::cout << "How Old are you? ";
  std::cin >> age;
  std::cout << "Are you a PH Citizen? ";
  std::cin >> citizen;
  std::cout << "Are you registered? ";
  std::cin >> registered;

  if (age >= 18 and citizen == true and registered == true) {
    std::cout << "You can vote!";
  }
 else if (age < 18) {
    std::cout << "You are not old enough to vote.\n";
  }
  else if (citizen == false) {
    std::cout << "You are not eligible to vote.\n";
  }
  else if (registered == false) {
    std::cout << "You need to register first.\n";
  }
  else {
    std::cout << "You have not met the requirements.\n";
  }
  
}

// Trivia Quiz ❓ (My code)
#include <iostream>

int main() {
  // Write code here
  int answer1;
  int answer2;
  std::string answer3;

  //Question number 1
  std::cout << "Q1) What is the name of the world's longest river? 💧\n";
  std::cout << "1) Missouri River\n";
  std::cout << "2) Nile\n";
  std::cout << "3) Amazon River\n";
  std::cout << "4) Yangtze River\n";
  std::cout << "Type your answer: ";
  std::cin >> answer1;

  //Question number 2
  std::cout << "Q2) How many bones are in the human body? 🦴\n";
  std::cout << "1) 92\n";
  std::cout << "2) 150\n";
  std::cout << "3) 206\n";
  std::cout << "4) 10 \n";
  std::cout << "Type your answer: ";
  std::cin >> answer2;

  //Question number 3
  std::cout << "Q3) What food never spoils? 😷\n";
  std::cout << "Type your answer: ";
  std::cin >> answer3;

  if (answer1 != 3 and answer2 != 3 and answer3 != "honey"){
    std::cout << "You are dumb! Score: 0/3";
  }
  else if (answer1 == 3 and answer2 != 3 and answer3 != "honey"){
    std::cout << "You are not too dumb! Score: 1/3";
  }
  else if (answer1 != 3 and answer2 == 3 and answer3 != "honey"){
    std::cout << "You are not too dumb! Score: 1/3";
  }
  else if (answer1 != 3 and answer2 != 3 and answer3 == "honey"){
    std::cout << "You are not too dumb! Score: 1/3";
  }
  else if (answer1 == 3 and answer2 == 3 and answer3 != "honey"){
    std::cout << "Not bad! Score: 2/3";
  }
  else if (answer1 != 3 and answer2 == 3 and answer3 == "honey"){
    std::cout << "Not bad! Score: 2/3";
  }
  else if (answer1 == 3 and answer2 != 3 and answer3 == "honey"){
    std::cout << "Not bad! Score: 2/3";
  }
  else {
    std::cout << "Finally Someone who is smart! Score: 3/3";
  }

}


// Trivia Quiz ❓ (LLM Optimize Version)
#include <iostream>
#include <string>
#include <algorithm>

int main() {
    int answer1, answer2;
    std::string answer3;

    // Question 1
    std::cout << "Q1) What is the name of the world's longest river? 💧\n";
    std::cout << "1) Missouri River\n";
    std::cout << "2) Nile\n";
    std::cout << "3) Amazon River\n";
    std::cout << "4) Yangtze River\n";
    std::cout << "Type your answer (1-4): ";
    std::cin >> answer1;

    // Question 2
    std::cout << "Q2) How many bones are in the human body? 🦴\n";
    std::cout << "1) 92\n";
    std::cout << "2) 150\n";
    std::cout << "3) 206\n";
    std::cout << "4) 10\n";
    std::cout << "Type your answer (1-4): ";
    std::cin >> answer2;

    // Question 3
    std::cout << "Q3) What food never spoils? 😷\n";
    std::cout << "Type your answer: ";
    std::cin >> answer3;

    // Normalize answer3 to lowercase for case-insensitive comparison
    std::transform(answer3.begin(), answer3.end(), answer3.begin(), ::tolower);

    // Check correct answers
    int score = 0;
    if (answer1 == 3) score++;
    if (answer2 == 3) score++;
    if (answer3 == "honey") score++;

    // Print the result based on score using only if-else statements
    if (score == 0) {
        std::cout << "You need to brush up on your knowledge! Score: 0/3\n";
    } 
    else if (score == 1) {
        std::cout << "You are getting there! Score: 1/3\n";
    } 
    else if (score == 2) {
        std::cout << "Not bad! Score: 2/3\n";
    } 
    else {
        std::cout << "Great job! Score: 3/3\n";
    }

    return 0;
}


