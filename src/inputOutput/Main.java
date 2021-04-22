import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.IOException;
import java.util.Scanner;


class Main {
  public static void main (String[] args) {
    Scanner in = new Scanner(System.in); 
    String[] arr = new String[10];  
   try {
     File file = new File("outPut.txt");
     if (!file.exists()) {
       file.createNewFile();
     }
     FileWriter fw = new FileWriter(file,true);
     PrintWriter pw = new PrintWriter(fw);
     pw.println("");

     System.out.println("Please answer a few quick questions");
     //1st question
     System.out.println("What is your favorite thing about yourself?");
     arr[0] = in.next();
     pw.println("What is your favorite thing about yourself?");
     pw.println(arr[0]);
     //2nd question
     System.out.println("What do you wish you could change about yourself?");
     arr[1] = in.next();
     pw.println("What do you wish you could change about yourself?");
     pw.println(arr[1]);
     //3rd question
     System.out.println("Do you feel older or younger than your age?");
     arr[2] = in.next();
     pw.println("Do you feel older or younger than your age?");
     pw.println(arr[2]);
     //4th question
     System.out.println("If you could choose to be any animal, what animal would you choose to be?");
     arr[3] = in.next();
     pw.println("If you could choose to be any animal, what animal would you choose to be?");
     pw.println(arr[3]);
     //5th question
     System.out.println("What is your worst habit?");
     arr[4] = in.next();
     pw.println("What is your worst habit?");
     pw.println(arr[4]);
     //6th question
     System.out.println("In your life, have you been happier when you’ve had a lot of options, or when your options were limited?");
     arr[5] = in.next();
     pw.println("In your life, have you been happier when you’ve had a lot of options, or when your options were limited?");
     pw.println(arr[5]);
     //7th question
     System.out.println("What is your favorite book?");
     arr[6] = in.next();
     pw.println("What is your favorite book?");
     pw.println(arr[6]);
     //8th question
     System.out.println(" If you didn’t have to work to make money, how would you spend your time?");
     arr[7] = in.next();
     pw.println(" If you didn’t have to work to make money, how would you spend your time?");
     pw.println(arr[7]);
     //9th question
     System.out.println("If you could spend a day talking to an animal, what animal would you choose?"); 
     arr[8] = in.next();
     pw.println("If you could spend a day talking to an animal, what animal would you choose?");
     pw.println(arr[8]);
     //10th question
     System.out.println("What superpower would you choose if you were given the ability to develop one superpower?"); 
     arr[9] = in.next();
     pw.println("What superpower would you choose if you were given the ability to develop one superpower?");
     pw.println(arr[9]);
     pw.close();

     System.out.println("Data successfully appended at the end of file");
   } catch (IOException ioe) {
     System.out.println("Exception occurred");
     ioe.printStackTrace();
   }
  }
}