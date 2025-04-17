// Hello World In Java
public class HelloWorld{
  public static void main(String[] args){
    System.out.println("Hello World");
  }
}

//int variable sample
public class HelloWorld {
    public static void main(String[] args) {
        // Write your code here 💖
        int livingRoom = 15;
        int masterBedRoom = 45;
        int bathRoom = 10;

        System.out.println("The living Room has " + (livingRoom) + " items"); 
        System.out.println("The Master Bedroom has " + (masterBedRoom) + " items"); 
        System.out.println("The Bathroom has " + (bathRoom) + " items");  
        
    }
}

// Using different datatypes
public class HelloWorld {
    public static void main(String[] args) {
        String name = "Ellie";
        String state = "Illinois";
        char gender = 'F';
        int age = 28;
        boolean organDonor = false;

        System.out.println(name);
        System.out.println(state);
        System.out.println(gender);
        System.out.println(age);
        System.out.println(organDonor);
    }
}


// Arithmetic Operations
public class HelloWorld {
    public static void main(String[] args) {
        double chemicalA = 20.0;
        double chemicalB = 6.0;

        //fomula: A+B/AB
        double reactionResult = ((chemicalA + chemicalB)/(chemicalA * chemicalB));
        
        System.out.println(reactionResult);
        
    }
}

//User Input
import java.util.Scanner;

public class HelloWorld {
    public static void main(String[] args) {
        
        System.out.print("Enter your name: ");
        Scanner scanner = new Scanner(System.in);
        String name = scanner.nextLine(); //for string

        System.out.println("Your Name is " + name);
        
    }
}

// Other options:
// scanner.nextDouble()
// scanner.nextBoolean()
// scanner.nextInt()


// Convert coin value Challenge:

import java.util.Scanner;

public class HelloWorld {
    public static void main(String[] args) {
        // Write your code here 💖
        double coinValue = 0.0045;
        

        System.out.print("How Many Club Coin you have? ");
        Scanner scanner = new Scanner(System.in);
        double toConvert = scanner.nextDouble(); //for double
        double convertedValue = (toConvert * coinValue);

        System.out.println("Your Coin Value is: $" + convertedValue);
    }
}

// if statement:

// Paste code below 💖
public class HelloWorld {
    public static void main(String[] args) {
        int oats = 2;

        if (oats > 0) {
            System.out.println("Let's make oatmeal today!");
        } 
    }
}

//Practice Boolean
public class HelloWorld {
    public static void main(String[] args) {
        boolean isCatOwner = false;

        if (isCatOwner == true){
            System.out.println("20% off selected cat items with code MEOW2025");
        }
        else{
            System.out.println("Welcome to the Pets Pets Store!");
        }
        
    }
}

//else if
public class HelloWorld {
    public static void main(String[] args) {
        boolean isCatOwner = false;
        boolean isDogOwner = true;

        if (isCatOwner == true){
            System.out.println("20% off selected cat items with code MEOW2025");
        }
        else if (isDogOwner == true){
            System.out.println("20% off selected cat items with code WOOF2025");
        }
        else{
            System.out.println("Welcome to the Pets Pets Store!");
        }
        
    }
}

// Create a program that checks if you can ride the rollercoaster if you weigh above 40 kg and are taller than 120 cm.

// If both conditions are met, print “Congrats! You can ride!” 🎢
// Otherwise, “Sorry, You can't ride today.” 😞
import java.util.Scanner;
public class HelloWorld {
    public static void main(String[] args) {

        double weight;
        double height;

        System.out.print("What is your Weight in KG: ");
        Scanner scannerWeight = new Scanner(System.in);
        weight = scannerWeight.nextDouble();

        System.out.print("What is your Height in CM: ");
        Scanner scannerHeight = new Scanner(System.in);
        height = scannerHeight.nextDouble();

        if (weight <= 40 && height <= 120){
            System.out.println("Congrats! You can ride!🎢");
        }
        else{
            System.out.println("Sorry, You can't ride today.😞");
        }
    }
}


public class HelloWorld {
    public static void main(String[] args) {

        boolean isLatte = true;
        boolean isIced = false;
        boolean withMatcha = true;
        int itemsOrdered = 1; 
        int vanillaPumps = 3; 

        if (isLatte && isIced) {
            System.out.println("espresso, milk, ice, syrup");
        } else if (isLatte && withMatcha) {
            System.out.println("matcha, oat milk, ice, vanilla.");
        } else if (isLatte) {
            System.out.println("espresso, steamed milk.");
        } else {
            System.out.println("Select a drink to get started!");
        }

        if (itemsOrdered > 1) {
            System.out.println("provide cup holder.");
        }

        if (vanillaPumps >= 2) {
            System.out.println("charge $1 for extra vanilla.");
        }
        
    }
}



