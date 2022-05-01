using System;
using System.IO;
using dev = System.Console;
namespace utilsLib;

public class utilsLibrary
{
    // make 3 public number for the main program
    public int target1;
    public int target2;
    public int target3;
    // set result
    public int result;
    // functions
    public void ask_2nums(int target1, int target2, string? check) {
        dev.Write("Enter a value for the first target: ");
        target1 = Convert.ToInt32(dev.ReadLine());
        dev.Write("And the second target too: ");
        target2 = Convert.ToInt32(dev.ReadLine());
    }

    public void ask_3nums(int target1, int target2, int target3, string? check) {
        ask_2nums(target1, target2, null);
        dev.Write("The third target: ");
        target3 = Convert.ToInt32(dev.ReadLine());
        // I still keep this string checker here
        // x(a+b)
        if (check == "1")
        {
            
            result = target1 * (target3 + target2);
            Console.WriteLine("The answer is: "+result);
        }
        // x(a-b)
        else if (check == "2")
        {

            result = target1 * (target3 - target2);
            Console.WriteLine("The answer is: "+result);
        }
    }
}

