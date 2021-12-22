namespace utils;
public class utils
{
    // ask the user for the numbers
    public static void ask_2numbers() {
        Console.Write("Set variable for the first number: ");
        int number1 = Convert.ToInt32(Console.ReadLine());
        Console.Write("And for the second number too: ");
        int number2 = Convert.ToInt32(Console.ReadLine());
    }
    public static void ask_3numbers() {
        Console.Write("Set variable for the first number: ");
        int number1 = Convert.ToInt32(Console.ReadLine());
        Console.Write("And for the second number too: ");
        int number2 = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("for the third number: ");
        int number3 = Convert.ToInt32(Console.ReadLine());
    }
    // print a colored line
    public static void textgreen(string param) {
        Console.ForegroundColor = ConsoleColor.Green;
        Console.Write(param, Console.ForegroundColor);
    }
    public static void textgreenln(string param) {
        Console.ForegroundColor = ConsoleColor.Green;
        Console.WriteLine(param, Console.ForegroundColor);
    }
    public static void textred(string param) {
        Console.ForegroundColor = ConsoleColor.Red;
        Console.WriteLine(param, Console.ForegroundColor);
    }
    public static void textredln(string param) {
        Console.ForegroundColor = ConsoleColor.Red;
        Console.WriteLine(param, Console.ForegroundColor);
    }
}
