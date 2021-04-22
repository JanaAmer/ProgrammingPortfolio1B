//entry point for the application
import java.util.Scanner;

class Main {
public static void main(String[] args) {
Scanner in = new Scanner(System.in);
int number, boxWidth, boxHeight, boxLength, radius, aob, pob, slantHeight, height;
System.out.println("To make a box press 1");
System.out.println("To make a Sphere press 2");
System.out.println("To make a Pyramid press 3");
number = in.nextInt();
if (number == 1) {
System.out.println("You selected: Box");
System.out.println("Enter width:");
boxWidth = in.nextInt();
System.out.println("Enter height:");
boxHeight = in.nextInt();
System.out.println("Enter length:");
boxLength = in.nextInt();
Box myBox = new Box(boxWidth, boxHeight, boxLength);
// Sphere mySphere = new Sphere();
System.out.println("Surface Area: " + myBox.surfaceArea());
System.out.println("Volume: " + myBox.Volume());
} else if (number == 2) {
System.out.println("You selected: Sphere");
System.out.println("Enter radius:");
radius = in.nextInt();
Sphere mySphere = new Sphere(radius);
System.out.println("Surface Area " + mySphere.surfaceArea());
System.out.println("Volume " + mySphere.Volume());
} else if (number == 3) {
System.out.println("You selected Pyramid");
System.out.println("Enter Area of Base:");
aob = in.nextInt();
System.out.println("Enter Perimeter of Base:");
pob = in.nextInt();
System.out.println("Enter Slant Height:");
slantHeight = in.nextInt();
System.out.println("Enter Height:");
height = in.nextInt();
Pyramid myPyramid = new Pyramid(aob,pob,slantHeight);
System.out.println("Surface Area: " + myPyramid.surfaceArea());
System.out.println("Volume: " + myPyramid.Volume());
}
}


}