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
using _ = Math;
namespace utilsLib;

public class utilsLibrary
{
    // make 3 target numbers
    /*public int target1;
    public int target2;
    public int target3;*/

    // when we use _.Pow, double numbers are required
    public double pow1;
    public double pow2;

    // answer
    const string ans = "The answer is: ";

    // set results
    public int result;
    public double rs;

    // functions
    public void ask_2nums(int target1, int target2, string? check) {
        // ask for numbers.
        dev.Write("Enter a value for the first target: ");
        target1 = Convert.ToInt32(dev.ReadLine());
        dev.Write("And the second target too: ");
        target2 = Convert.ToInt32(dev.ReadLine());
        
        // basic maths
        switch(check) {
            case "compare": compare(target1, target2); break;
            case "add": writeAns((target1+target2)); break;
            case "minus": writeAns((target1-target2)); break;
            case "multiple": writeAns((target1*target2)); break;
            case "div": writeAns((target1/target2)); break;
        }

        pow1 = Convert.ToDouble(target1);
        pow2 = Convert.ToDouble(target2);

        // x^2 - a^2
        if (check == "a")
        {
            rs = sqr(pow1) - sqr(pow2);
            dev.WriteLine(ans+rs);
        } // x^2+a^2
        else if (check == "b")
        {
            rs = sqr(pow1)+ sqr(pow2);
            dev.WriteLine(ans+rs;   
        } // (a+b)^2
        else if (check == "c")
        {
            rs = sqr(pow1 + pow2);
            dev.WriteLine(ans+rs);
        } // (a-b)^2
        else if (check == "d") 
        {
            rs = sqr(pow1 - pow2);
            dev.WriteLine(ans+rs);
        } // a^3 + b^3
        else if (check == "e")
        {
            rs = pow1 * pow1 * pow1 + pow2 * pow2 * pow2;
            dev.WriteLine(ans+rs);
        } // a^3 - b^3
        else if (check == "f")
        {
            rs = pow1 * pow1 * pow1 - pow2 * pow2 * pow2;
            dev.WriteLine(ans+rs);
        } // (a+b)^3
        else if (check == "g")
        {
            rs = (pow1 + pow2) * (pow1 + pow2) * (pow1 + pow2);
            dev.WriteLine(ans+rs);
        } // (a-b)^3
        else if (check == "h")
        {
            rs = (pow1 - pow2) * (pow1 - pow2) * (pow1 - pow2);
            dev.WriteLine(ans+rs);
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
            writeAns(result);
        }
        // x(a-b)
        else if (check == "2")
        {
            result = target1 * (target3 - target2);
            writeAns(result);
        }
    }

    public void compare(int target1, int target2) {
        if (target1 < target2) { 
            dev.WriteLine("The first number < the second one / "+target2.CompareTo(target1));
        }
        else if (target2 < target1) {
            dev.WriteLine("The second number < the first one / "+target1.CompareTo(target2));
        }
        else if (target2 == target1) {
            dev.WriteLine("2 number are the same.");
        }
    }

    public void writeAns(int rs) {
        return dev.WriteLine(ans+rs);
    }

    public double sqr(double num) {
        return _.Pow(num, 2);
    }
}

