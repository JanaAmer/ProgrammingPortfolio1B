import java.util.Scanner; 

class Main {
  public static void main(String[] args) { 
        Scanner sc = new Scanner(System.in); 
  
        int number = 1 + (int)(100 * Math.random()); 
  
        int x = 7; 
  
        int i, guess; 
  
        System.out.println( 
            "A number is randomly generated"
            + " between 1 to 100."
            + " Guess the number"
            + " in 7 tries:"); 
  
        for (i = 0; i < x; i++) { 
            guess = sc.nextInt(); 
  
            if (number == guess) { 
                System.out.println( 
                    "Congratulations!"
                    + " You guessed the number."); 
                break; 
            } 
            else if (number > guess 
                     && i != x - 1) { 
                System.out.println( 
                    "The number is "
                    + "greater than " + guess); 
            } 
            else if (number < guess 
                     && i != x - 1) { 
                System.out.println( 
                    "The number is"
                    + " less than " + guess); 
            } 
        } 
  
        if (i == x) { 
            System.out.println( 
                "You have run out of tries!"); 
  
            System.out.println( 
                "The number was " + number); 
  }
}
}