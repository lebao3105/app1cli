using System;
using System.IO;
using dev = System.Console;
namespace utilsLib;

public class utilsLibrary
{
    public void ask_2nums(int target1, int target2) {
        dev.Write("Enter a value for the first target: ");
        target1 = Convert.ToInt32(dev.ReadLine());
        dev.Write("And the second target too: ");
        target2 = Convert.ToInt32(dev.ReadLine());
    }

    public void ask_3nums(int target1, int target2, int target3) {
        ask_2nums(target1, target2);
        dev.Write("The third target: ");
        target3 = Convert.ToInt32(dev.ReadLine());
    }

    public void compare(int target1, int target2) {
        if (target1 < target2) { 
            dev.WriteLine("The first number < the second one "+target2.CompareTo(target1));
        }
        else if (target2 < target1) {
            dev.WriteLine("The second number < the first one "+target1.CompareTo(target2));
        }
        else if (target2 == target1) {
            dev.WriteLine("2 number are the same.");
        }
    }
}

