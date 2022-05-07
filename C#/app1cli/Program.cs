/* 
  app1.pas - Main Program file which links everything together 
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
  Possible future improvements are in TODO file, read it if you want.
*/

using System;
using System.IO; 
using utilsLib;

namespace app1cli
{
    class Program
    {
        static void Main()
        {
            /* Call libraries, and make some local variables */
            var test = new utilsLibrary();
            string path = Directory.GetCurrentDirectory();
            int miliseconds = 2350;
            Console.WriteLine("app1cli version 1.0.29 Undefined Build (4/30/22)");
            Console.WriteLine("The current time is: " + DateTime.Now);
            Console.WriteLine("Program's path: {0}" , path);  
            Thread.Sleep(miliseconds);
            Console.Clear();
            Console.WriteLine("Welcome to app1! Select something below:");    
        // Main menu
          home: 
          { 
            Console.WriteLine(" ______________________________");
            Console.WriteLine("|         1.Compare            |");
            Console.WriteLine("|        2.Calculator          |");
            Console.WriteLine("|          3.About             |");
            Console.WriteLine("|          4.Exit              |");
            Console.WriteLine("|______________________________|");
            Console.Write("Enter your choice here: ");
            int choice = Convert.ToInt32(Console.ReadLine());
            if (choice == 1)
            { goto cpr; }
            else if (choice == 2)
            { goto cal; }
            else if (choice == 3)
            {
                Console.WriteLine("app1 version 1.0.29 Undefined Build (4/30/22)");
                Console.WriteLine("The current time is: " + DateTime.Now);  
                Console.WriteLine("This C# version do same things as the Pascal version.\n");
                Console.WriteLine("Program's path: {0)", path);
                Console.WriteLine("-------------------------------------------------");
                // Never translate these 4 lines!
                Console.WriteLine("Copyright (C) 2021-2022 Le Bao Nguyen");
                Console.WriteLine("This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.");
                Console.WriteLine("This is free software, and you are welcome to redistribute it");
                Console.WriteLine("under certain conditions; type `show c' for details.");
                // End of the short copyright notice
                Console.WriteLine("-------------------------------------------------");
                Console.WriteLine("What this application can do:");
                Console.WriteLine("1. Do many calculations");
                Console.WriteLine("2. Compare 2 numbers");
                Console.WriteLine("3. Run in Command Prompt (no GUI)");
                Console.WriteLine("-------------------------------------------------");
                Console.WriteLine("Press a key to exit...");
                Console.ReadKey();
                Console.WriteLine("");
                goto ask;
            }
            else if (choice == 4)
            { goto exit; }
            else
            { Console.WriteLine("Invaild number. Try again."); } // end of if_choices

        // yeah, I moved the "labels" here:)
            cpr: {
                Console.WriteLine("You are typed 1 - compare.");
                test.ask_2nums(test.target1, test.target2, "compare");  
                goto ask; 
            }

            cal: {
                Console.WriteLine("You are typed 2.");
                Console.WriteLine("Choose something to do now:");
                Console.WriteLine("__________________________");
                Console.WriteLine("   1. Plus (+)");
                Console.WriteLine("   2. Minus (-)");
                Console.WriteLine("   3. Multiple (*)");
                Console.WriteLine("   4. Divide (/)");
                Console.WriteLine("   5. Advanced math(s)");
                Console.WriteLine("   6. Exit");
                Console.WriteLine("__________________________");
                Console.Write("Write answer: ");
                int answer = Convert.ToInt32(Console.ReadLine());
                if (answer == 1)
                {
                        Console.WriteLine("You are typed 1 - plus.");
                        test.ask_2nums(test.target1, test.target2, "add");
                        goto ask;
                }        
                else if (answer == 2)
                {
                        Console.WriteLine("You are typed 2 - minus.");
                        test.ask_2nums(test.target1, test.target2, "minus");
                        goto ask;       
                }
                else if (answer == 3)
                {
                        Console.WriteLine("You are typed 3 - multiple.");
                        test.ask_2nums(test.target1, test.target2, "multiple");
                        goto ask;       
                }
                else if (answer == 4)
                {
                        Console.WriteLine("You are typed 4 - divide.");
                        test.ask_2nums(test.target1, test.target2, "div");
                        goto ask;       
                }
                else if (answer == 5)
                {
                        Console.WriteLine("Select a function here:");
                        Console.WriteLine("__________________________");
                        Console.WriteLine("        1. x(a+b)");
                        Console.WriteLine("        2. x(a-b)");
                        Console.WriteLine("        3. x^2 - a^2");
                        Console.WriteLine("        4. x^2 + a^2");
                        Console.WriteLine("        5. (a+b)^2");
                        Console.WriteLine("        6. (a-b)^2");
                        Console.WriteLine("        7. a^3 + b^3");
                        Console.WriteLine("        8. a^3 - b^3");
                        Console.WriteLine("        9. (a+b)^3");
                        Console.WriteLine("        10. (a-b)^3");
                        Console.WriteLine("__________________________");
                        Console.WriteLine("11.Cancel");
                        Console.WriteLine("12.Exit");
                        Console.Write("Answer key here -> : ");
                        int answer_2 = Convert.ToInt32(Console.ReadLine());
                        if (answer_2 == 1)
                        {
                            Console.WriteLine("You are typed 1 - x(a+b).");
                            test.ask_3nums(test.target1, test.target2, test.target3, "1");
                            goto ask;    
                        }
                        else if (answer_2 == 2)
                        {
                            Console.WriteLine("You are typed 2 - x(a-b).");
                            test.ask_3nums(test.target1, test.target2, test.target3, "2");
                            goto ask;    
                        }
                        else if (answer_2 == 3)
                        {
                            Console.WriteLine("You are typed 3 - x^2-a^2).");
                            test.ask_2nums(test.target1, test.target2, "a");
                            goto ask;    
                        }
                        else if (answer_2 == 4) {
                            Console.WriteLine("You are typed 4 - x^2+a^2).");
                            test.ask_2nums(test.target1, test.target2, "b");
                            goto ask;
                        }
                        else if (answer_2 == 5)
                        {
                            Console.WriteLine("You are typed 5 - (a+b)^2.");
                            test.ask_2nums(test.target1, test.target2, "c");
                            goto ask;    
                        }
                        else if (answer_2 == 6)
                        {
                            Console.WriteLine("You are typed 6 - (a-b)^2.");
                            test.ask_2nums(test.target1, test.target2, "d");
                            goto ask;    
                        }
                        else if (answer_2 == 7)
                        {
                            Console.WriteLine("You are typed 7 - a^3+b^3.");
                            test.ask_2nums(test.target1, test.target2, "e");
                            goto ask;    
                        }
                        else if (answer_2 == 8)
                        {
                            Console.WriteLine("You are typed 8 - a^3-b^3.");
                            test.ask_2nums(test.target1, test.target2, "f");
                            goto ask;    
                        }
                        else if (answer_2 == 9)
                        {
                            Console.WriteLine("You are typed 9 - (a+b)^3.");
                            test.ask_2nums(test.target1, test.target2, "g");
                            goto ask;    
                        }
                        else if (answer_2 == 10)
                        {
                            Console.WriteLine("You are typed 10 - (a-b)^3.");
                            test.ask_2nums(test.target1, test.target2, "h");
                            goto ask;    
                        }
                        else if (answer_2 == 11)
                        { goto home; }
                        else if (answer_2 == 12)
                        { goto exit; }
                        else 
                        { Console.WriteLine("Invaild number. Please try again."); }
                }
                else if (answer == 6)
                { goto home; }
            };
          ask: 
          {    
                Console.WriteLine("Do you want to come back to menu or exit?");
                Console.WriteLine("-------------------------------------------------");
                Console.WriteLine("1. Come back");
                Console.WriteLine("2. Do calculation(s) now");
                Console.WriteLine("3. Compare");
                Console.WriteLine("2. Exit");
                Console.WriteLine("-------------------------------------------------");
                Console.WriteLine("Enter your answer [b(ack)/c(al)/(com)p(are)/e(xit)]: ");
                ConsoleKeyInfo keycheck = new ConsoleKeyInfo();
                while (!Console.KeyAvailable) {
                    keycheck = Console.ReadKey(true);
                    Thread.Sleep(miliseconds);
                    switch (keycheck.Key) {
                        case ConsoleKey.C: goto cal;
                        case ConsoleKey.P: goto cpr;
                        case ConsoleKey.B: goto home;
                        case ConsoleKey.E: goto exit;   
                    }
                }
          }  
          exit:
            { Console.WriteLine("Are you sure want to exit?");
                Console.WriteLine("1. Yes, do it and I will meet you later");
                Console.WriteLine("2. No, come back to main menu");
                Console.WriteLine("Anyway, this need your answer [y/n]: ");
                string item = Convert.ToString(Console.ReadLine());
                if (item == "y" || item == "Y" || item == "y")
                {
                    Console.WriteLine("Thank you for using the application! Exiting...");
                    Thread.Sleep(miliseconds);
                    Environment.Exit(0);
                }
                else if (item == "no" || item == "n")
                { goto home; }
                else
                { Console.WriteLine("Invaild answer. Please try again."); }
            }      
          } // end of "home" label         
        } // end of main()
    } // end of the main class
} // and the program

