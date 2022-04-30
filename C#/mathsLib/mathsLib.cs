using System;
using dev = System.Console;
namespace mathsLib;
public class mathsLibrary
{
    private const string line1 = "The answer is: ";
    private const string line2 = "Here's what you are looking for - the answer is: ";

    public void basic_operations(int number1, int number2, string ? check) {
        if (check == "add") {
            dev.WriteLine(line1 + (number1 + number2));
        } else if (check == "sub") {
            dev.WriteLine(line2 + (number1 - number2));
        } else if (check == "multiple") {
            dev.WriteLine(line1 + (number1 * number2));
        } else if (check == "divide") {
            dev.WriteLine(line2 + (number1 / number2));
        } 
    }

    public void compare(int number1, int number2) {
        if (number1 > number2) {
            dev.WriteLine("The first number is greater than the second number.");
        } else if (number1 < number2) {
            dev.WriteLine("The first number is less than the second one.");
        } else if (number1 == number2) {
            dev.WriteLine("The first number is equal to the second.");
        }
    }
}
