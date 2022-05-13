/* 
  Copyright (C) 2021-2022 Le Bao Nguyen

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <https://www.gnu.org/licenses/>.
  ----------------------------------------------------------------------
  File name : utilsLib.cs
  This file contains some functions needed for app1cli.
  All changes are included in the /TODO file.
*/
using dev = System.Console;
namespace utilsLib;

public class utilsLibrary
{
    // make 3 target numbers
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
        // add a fix for no-value numbers
        if (check == "compare") 
        {
            compare(target1, target2);
        } 
        else if (check == "add") 
        {
            dev.WriteLine("The answer is: "+(target1+target2));
        } 
        else if (check == "minus") 
        {
            dev.WriteLine("The answer is: "+(target1-target2));
        } 
        else if (check == "multiple") 
        {
            dev.WriteLine("The answer is: "+(target1*target2));
        } 
        else if (check == "div") 
        {
            dev.WriteLine("The answer is: "+(target1/target2));
        }
        // x^2-a^2
        else if (check == "a")
        {
            result = target1 * target1 - target2 * target2;
            dev.WriteLine("The answer is: "+result);
        } // x^2+a^2
        else if (check == "b")
        {
            result = target1 * target1 + target2 * target2;
            dev.WriteLine("The answer is: "+result);   
        } // (a+b)^2
        else if (check == "c")
        {
            result = (target1 + target2) * (target2 + target1);
            dev.WriteLine("The answer is: "+result);
        } // (a-b)^2
        else if (check == "d") 
        {
            result = (target1 - target2) * (target1 - target2);
            dev.WriteLine("The answer is: "+result);
        } // a^3 + b^3
        else if (check == "e")
        {
            result = target1 * target1 * target1 + target2 * target2 * target2;
            dev.WriteLine("The answer is: "+result);
        } // a^3 - b^3
        else if (check == "f")
        {
            result = target1 * target1 * target1 - target2 * target2 * target2;
            dev.WriteLine("The answer is: "+result);
        } // (a+b)^3
        else if (check == "g")
        {
            result = (target1 + target2) * (target1 + target2) * (target1 + target2);
            dev.WriteLine("The answer is: "+result);
        } // (a-b)^3
        else if (check == "h")
        {
            result = (target1 - target2) * (target1 - target2) * (target1 - target2);
            dev.WriteLine("The answer is: "+result);
        }
    }

    public void ask_3nums(int target1, int target2, int target3, string? check) {
        ask_2nums(target1, target2, null);
        dev.Write("The third target: ");
        target3 = Convert.ToInt32(dev.ReadLine());
        // x(a+b)
        if (check == "1")
        {   
            result = target1 * (target3 + target2);
            dev.WriteLine("The answer is: "+result);
        }
        // x(a-b)
        else if (check == "2")
        {
            result = target1 * (target3 - target2);
            dev.WriteLine("The answer is: "+result);
        }
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

