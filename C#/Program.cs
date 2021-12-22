using System;
using System.IO;  
using maths;
using utils;
namespace app1
{
    class Program
    {
        static void Main(string[] args)
        {
            var GetDirectory = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location); 
            // Main menu
            Console.WriteLine("app1 version 1.0.26+cs.net");
            Console.WriteLine("The current time is: " + DateTime.Now);
            Console.WriteLine("Program's path: "+GetDirectory);  
            // Console.WriteLine("Current program path: "+System.IO.Path.GetDirectoryName(app1.ExecutablePath));
            Console.WriteLine("Welcome back!");
          home: 
          { 
            Console.WriteLine("Choose an option to start now: ");
            Console.WriteLine("1.Compare");
            Console.WriteLine("2.Calculator");
            Console.WriteLine("3.About");
            Console.WriteLine("4.Exit");
            Console.Write("Enter your choice here: ");
            int choice = Convert.ToInt32(Console.ReadLine());
            if (choice == 1)
            {
                Console.WriteLine("You are typed 1 - compare.");
                Console.Write("Set variable for the first number: ");
                int number1 = Convert.ToInt32(Console.ReadLine());
                Console.Write("And for the second number too: ");
                int number2 = Convert.ToInt32(Console.ReadLine());
            // compare time!  
                if (number1 < number2)
                { 
                    Console.WriteLine("The first number < the second one "+number2.CompareTo(number1));
                    goto ask;
                }
                else if (number2 < number1)
                {
                    Console.WriteLine("The second number < the first one "+number1.CompareTo(number2));
                    goto ask;
                }
                else if (number2 == number1)
                {
                    Console.WriteLine("2 numbers are the same.");
                    goto ask;
                }    
            }
            else if (choice == 2)
            {
                Console.WriteLine("You are typed 2.");
                Console.WriteLine("Choose something to do now:");
                Console.WriteLine("1. Plus (+)");
                Console.WriteLine("2. Minus (-)");
                Console.WriteLine("3. Multiple (*)");
                Console.WriteLine("4. Divide (/)");
                Console.WriteLine("5. Advanced math(s)");
                Console.WriteLine("6. Exit");
                Console.Write("Write answer: ");
                int answer = Convert.ToInt32(Console.ReadLine());
                if (answer == 1)
                {
                        Console.WriteLine("You are typed 1 - plus.");
                        ask_2numbers();
                        Add(number1, number2);
                        goto ask;
                }        
                else if (answer == 2)
                {
                        Console.WriteLine("You are typed 2 - minus.");
                        ask_2numbers();
                        Sub(number1, number2); 
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
                        Console.WriteLine("1.x(a+b)");
                        Console.WriteLine("2.x(a-b)");
                        Console.WriteLine("3.x^2 - a^2");
                        Console.WriteLine("4.(a+b)^2");
                        Console.WriteLine("5.(a-b)^2");
                        Console.WriteLine("6.a^3 + b^3");
                        Console.WriteLine("7.a^3 - b^3");
                        Console.WriteLine("8.(a+b)^3");
                        Console.WriteLine("9.(a-b)^3");
                        Console.WriteLine("10.Cancel");
                        Console.WriteLine("11.Exit");
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
                        else if (answer_2 == 4)
                        {
                            Console.WriteLine("You are typed 4 - (a+b)^2.");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = (number1 + number2) * (number1 + number2);
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 5)
                        {
                            Console.WriteLine("You are typed 5 - (a-b)^2.");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = (number1 - number2) * (number1 - number2);
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 6)
                        {
                            Console.WriteLine("You are typed 6 - a^3+b^3.");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = (number1 * number1 * number1 + number2 * number2 * number2);
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 7)
                        {
                            Console.WriteLine("You are typed 7 - a^3-b^3.");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = number1 * number1 * number1 - number2 * number2 * number2;
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 8)
                        {
                            Console.WriteLine("You are typed 8 - (a+b)^3.");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = (number1 + number2) * (number1 + number2) * (number1 + number2);
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 9)
                        {
                            Console.WriteLine("You are typed 9 - (a-b)^3.");
                            Console.Write("Set variable for the first number (x): ");
                            int number1 = Convert.ToInt32(Console.ReadLine());
                            Console.Write("And for the second number too (a): ");
                            int number2 = Convert.ToInt32(Console.ReadLine());
                            int result = (number1 - number2) * (number1 - number2) * (number1 - number2);
                            Console.WriteLine("The answer is: "+result);
                            goto ask;    
                        }
                        else if (answer_2 == 10)
                        { goto home; }
                        else if (answer_2 == 11)
                        { goto exit; }
                        else 
                        { Console.WriteLine("Invaild number. Please try again."); }
                }
                else if (answer == 6)
                { goto home; }
            }
            else if (choice == 3)
            {
                Console.WriteLine("app1 version 1.0.26 by Le Bao Nguyen.");
                Console.WriteLine("The current time is: " + DateTime.Now);  
                Console.WriteLine("Program's path: "+GetDirectory);  
                Console.WriteLine("This application is written in C# and built with .NET SDK;");
                Console.WriteLine("you can edit, redistribution app1 to others WITHOUT any WARRANTY.");
                Console.WriteLine("This C# version do the same things as the Pascal version.\n");
                Console.WriteLine("What's new on this 1.0.26 version:");
                Console.WriteLine("1.Added new maths: (a-b)^3, (a+b)^3, a^3 + b^3");
                Console.WriteLine("2.Removed warning the choice cant be under 1 in sub_menu (see in source code)");
                Console.WriteLine("3.Show the current time and date while starting the program (Thanks to tutorialspoint)");
                Console.WriteLine("4.Fixed the exit bug by...add the exit command (see in source code, Pascal version)");
                Console.WriteLine("5.Show the program path in startup and in about");
                Console.ReadKey();
                goto ask;
            }
            else if (choice == 4)
            { goto exit; }
            else
            { Console.WriteLine("Invaild number. Try again."); } // end of if_choices
          ask: 
          {    
                Console.WriteLine("Do you want to come back to menu or exit?");
                Console.WriteLine("1. Come back");
                Console.WriteLine("2. Exit");
                Console.Write("Type your answer: ");
                int answer = Convert.ToInt32(Console.ReadLine());
                if (answer == 1)
                { goto home; }
                else if (answer == 2)
                { goto exit; }
          }  
          exit:
              { Console.WriteLine("Are you sure want to exit?");
                Console.WriteLine("1. Yes, do it and I will meet you later");
                Console.WriteLine("2. No, come back to main menu");
                Console.Write("Anyway, this need your answer: ");
                int answer = Convert.ToInt32(Console.ReadLine());
                if (answer == 1)
                { Console.WriteLine("Exitting..."); System.Environment.Exit(1);}
                else if (answer == 2)
                { goto home;} 
              } // end of "exit"       
          } // end of "home"         
        } // end of the "static"
    } // end of the class
} // and the program
