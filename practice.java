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




