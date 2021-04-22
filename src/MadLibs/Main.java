import java.util.Scanner;

class Main {
public static void main(String args[]) {

Scanner input = new Scanner(System.in);

System.out.print("Enter noun: ");
String noun = input.nextLine();

System.out.print("Enter verb: ");
String verb = input.nextLine();

System.out.print("Enter adjective: ");
String adjective = input.nextLine();

System.out.print("Enter celebrity: ");
String celebrity = input.nextLine();

System.out.print("Enter pronoun: ");
String pronoun = input.nextLine();

System.out.print("Enter color: ");
String color = input.nextLine();

System.out.print("Enter adjective: ");
String adjectiveTwo = input.nextLine();

System.out.print("Enter a food: ");
String food = input.nextLine();

System.out.print("Enter a store name: ");
String store = input.nextLine();

System.out.print("Enter your name: ");
String yourName = input.nextLine();

System.out.print("Enter noun: ");
String nounTwo = input.nextLine();

System.out.print("Enter form of transportation: ");
String transport = input.nextLine();

System.out.println("________________________________________________");
System.out.println(" ");
System.out.println("As you walk down the street you see a " + noun);
System.out.println("You " +verb + " towards it");
System.out.println("It replies, 'my name is " + celebrity +"'");
System.out.println("You say 'Hello " +celebrity +" would you like to come on an adventure with me?'");
System.out.println(pronoun + " says 'I'd love to come with you, lets go'");
System.out.println("You walk into a " +color +", " +adjectiveTwo +" building");
System.out.println("You see that this is a store, its dirty and there's " +food +" on the floor");
System.out.println("Even though this place is unkept you walk up to the register");
System.out.println("The store clerk says 'Hello! Welcome to the " +store +", how may I help you today?'");
System.out.println("You reply, 'Hello, my name is  " +yourName +". What kind of shop is this?'");
System.out.println("He says, 'Well, we sell " + nounTwo +"'");
System.out.println("Upon hearing this, you're horrified, you jump in your " +transport +" and drive off into the sunset with " +celebrity);
}
}

