using System;
using System.IO; 

namespace app1
{
    class Program
    {
    
        static void Main(string[] args)
        {
            Console.WriteLine("app1 version 1.0.26+cs.net", ConsoleColor.Green);
            Console.WriteLine("The current time is: " + DateTime.Now);
            Console.WriteLine("Program's path: {0}");  
            Console.Clear();
            Console.WriteLine("Welcome back! Choose an option to start now: ");    
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
                Console.WriteLine("app1 version 1.0.28 by Le Bao Nguyen.");
                Console.WriteLine("The current time is: " + DateTime.Now);  
                Console.WriteLine("Program's path: {0}");
                Console.WriteLine("This is NOT the Final version of app1 C# edition.");
                Console.WriteLine("You can edit, redistribution this application to others WITHOUT any WARRANTY.");
                Console.WriteLine("This C# version do the same things as the Pascal version.\n");
                Console.WriteLine("News in this release: ");
                Console.WriteLine("| 1. Added new math: x^2 + a^2");
                Console.WriteLine("| 2. Applied string value to asking the user");
                Console.WriteLine("| 3. Use a new layout to menu, asking question...");
                Console.WriteLine("| And the most inportant here is... you can press specified key to");
                Console.WriteLine("| do some action, such as exit the program or come back to menu.");
                Console.WriteLine("Press a key to continue...");
                Console.ReadKey();
                Console.WriteLine("");
                Console.WriteLine("What's new on this version 1.0.26:");
                Console.WriteLine("| 1.Added new maths: (a-b)^3, (a+b)^3, a^3 + b^3");
                Console.WriteLine("| 2.Show the current time and date while starting the program (Thanks to tutorialspoint)");
                Console.WriteLine("| 3.Show the program path in startup and in about\n");
                Console.WriteLine("Press a key to exit About...");
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
                Console.Write("Set variable for the first number: ");
                int number1 = Convert.ToInt32(Console.ReadLine());
                Console.Write("And for the second number too: ");
                int number2 = Convert.ToInt32(Console.ReadLine());  
                if (number1 < number2)
                { 
                Console.WriteLine("The first number < the second one "+number2.CompareTo(number1));
                }
                else if (number2 < number1)
                {
                    Console.WriteLine("The second number < the first one "+number1.CompareTo(number2));
                }
                else if (number2 == number1)
                {
                    Console.WriteLine("2 numbers are the same.");
                }    
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
                        Console.Write("Set variable for the first number: ");
                        int number1 = Convert.ToInt32(Console.ReadLine());
                        Console.Write("And for the second number too: ");
                        int number2 = Convert.ToInt32(Console.ReadLine());
                        int result = number1 + number2;
                        Console.WriteLine("The answer is: "+result);
                        goto ask;
                }        
                else if (answer == 2)
                {
                        Console.WriteLine("You are typed 2 - minus.");
                        Console.Write("Set variable for the first number: ");
                        int number1 = Convert.ToInt32(Console.ReadLine());
                        Console.Write("And for the second number too: ");
                        int number2 = Convert.ToInt32(Console.ReadLine());
                        int result = number1 - number2;
                        Console.WriteLine("The answer is: "+result);
                        goto ask;       
                }
                else if (answer == 3)
                {
                        Console.WriteLine("You are typed 3 - multiple.");
                        Console.Write("Set variable for the first number: ");
                        int number1 = Convert.ToInt32(Console.ReadLine());
                        Console.Write("And for the second number too: ");
                        int number2 = Convert.ToInt32(Console.ReadLine());
                        int result = number1 * number2;
                        Console.WriteLine("The answer is: "+result);
                        goto ask;       
                }
                else if (answer == 4)
                {
                        Console.WriteLine("You are typed 4 - divide.");
                        Console.Write("Set variable for the first number: ");
                        int number1 = Convert.ToInt32(Console.ReadLine());
                        Console.Write("And for the second number too: ");
                        int number2 = Convert.ToInt32(Console.ReadLine());
                        int result = number1 / number2;
                        Console.WriteLine("The answer is: "+result);
                        goto ask;       
                }
                else if (answer == 5)
                {
                        Console.WriteLine("Select a function here:");
                        Console.WriteLine("__________________________");
                        Console.WriteLine("1.x(a+b)");
                        Console.WriteLine("2.x(a-b)");
                        Console.WriteLine("3.x^2 - a^2");
                        Console.WriteLine("4.x^2 + a^2");
                        Console.WriteLine("5.(a+b)^2");
                        Console.WriteLine("6.(a-b)^2");
                        Console.WriteLine("7.a^3 + b^3");
                        Console.WriteLine("8.a^3 - b^3");
                        Console.WriteLine("9.(a+b)^3");
                        Console.WriteLine("10.(a-b)^3");
                        Console.WriteLine("__________________________");
                        Console.WriteLine("11.Cancel");
                        Console.WriteLine("12.Exit");
                        Console.Write("Answer key here -> : ");
                        int answer_2 = Convert.ToInt32(Console.ReadLine());
                        if (answer_2 == 1)
                        {
                            Console.WriteLine("You are typed 1 - x(a+b).");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("For the third number (b): ");
                            int number3 = Convert.ToInt32(Console.ReadLine());
                            int result = number1 * (number3 + number2);
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 2)
                        {
                            Console.WriteLine("You are typed 2 - x(a-b).");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("For the third number (b): ");
                            int number3 = Convert.ToInt32(Console.ReadLine());
                            int result = number1 * (number3 - number2);
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 3)
                        {
                            Console.WriteLine("You are typed 3 - x^2-a^2).");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = number1 * number1 - number2 * number2;
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 4) {
                            Console.WriteLine("You are typed 4 - x^2+a^2).");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = number1 * number1 + number2 * number2;
                            Console.WriteLine("The answer is: "+result);
                            goto ask;
                        }
                        else if (answer_2 == 5)
                        {
                            Console.WriteLine("You are typed 5 - (a+b)^2.");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = (number1 + number2) * (number1 + number2);
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 6)
                        {
                            Console.WriteLine("You are typed 6 - (a-b)^2.");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = (number1 - number2) * (number1 - number2);
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 7)
                        {
                            Console.WriteLine("You are typed 7 - a^3+b^3.");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = (number1 * number1 * number1 + number2 * number2 * number2);
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 8)
                        {
                            Console.WriteLine("You are typed 8 - a^3-b^3.");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = number1 * number1 * number1 - number2 * number2 * number2;
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 9)
                        {
                            Console.WriteLine("You are typed 9 - (a+b)^3.");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = (number1 + number2) * (number1 + number2) * (number1 + number2);
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 10)
                        {
                            Console.WriteLine("You are typed 10 - (a-b)^3.");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = (number1 - number2) * (number1 - number2) * (number1 - number2);
                            Console.WriteLine("The answer is: "+result);
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
                Console.WriteLine("1. Come back");
                Console.WriteLine("2. Do calculation(s) now");
                Console.WriteLine("3. Compare");
                Console.WriteLine("2. Exit");
                Console.Write("Type your answer [b(back)/c(cal)/p(compare)/e(exit)]: ");
                ConsoleKeyInfo keycheck = new ConsoleKeyInfo();
                while (!Console.KeyAvailable) {
                keycheck = Console.ReadKey(true);
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
                Console.Write("Anyway, this need your answer [y/n]: ");
                ConsoleKeyInfo keyinfo = new ConsoleKeyInfo();
                while (!Console.KeyAvailable) {
                    keyinfo = Console.ReadKey(true);
                    switch (keyinfo.Key) {
                        case ConsoleKey.Y: System.Environment.Exit(0);
                        case ConsoleKey.N: goto home;
                    }
                }
              }      
          } // end of "home" label         
        } // end of "static"
    } // end of the class
} // and the program
