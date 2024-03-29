unit resource;
Interface
resourcestring
	(* Some lines in startup *)
	Startup_opening = 'Starting...';
	Startup_appname = 'app1 from Le Bao Nguyen.';
	Startup_appver = 'Version ';
	(* Program location and time-date *)
	Applocation = 'The current program location is: ';
	Timedate = 'The current time: ';
	(* Now we are in the main menu *)
	Menu_welcome = 'Welcome to app1! Choose a function below to start: ';
    Menu_item1 = 'Compare';
    Menu_item2 = 'Calculator';
    Menu_item3 = 'Infomation';
    Menu_item4 = 'Exit';
    Menu_ask = 'Enter your answer here: ';
    (* Calculator *)
    Select = 'Select a formula now: ';
    Select2 = 'Or you can get more with ';
    Cancel = 'Cancel';
    Cal_Adv = 'Advenced maths';
    Cal_Exit = 'Force exit';
    Cal_Ans = 'The answer is: ';
    (* Compare *)
    Cpr_Smaller = 'The first number < the second one';
    Cpr_Bigger = 'The first number > the second one';
    Cpr_Both = 'These given numbers are the same';
    (* Ask *)
    Ask_num1 = 'Give the first number a value: ';
    Ask_num2 = 'The second number here: ';
    Ask_num3 = 'The third number too: ';
    Ask_cal = 'Try to calculation';
    Ask_back = 'Return to Main Menu';
    Ask_exit = 'Exit the program';
    Ask_home = 'Go to Main Menu';
    Ask_choice = 'Enter your choice here: ';
    Ask_other = 'Are you want to go to Main Menu to do other actions, or exit?';
    (* Exit *)
    Exit_ask = 'Are you sure want to exit the program?'; // we have Ask_exit before, now we have Exit_ask:) 
    Exit_ask_2 = 'You will be redirected back to the main menu if you choose no'; // new 
    Exit_bye = 'Thank you for using my application. Have a good day!'; // new too
    Exit_out = 'Exitting...';
    (* Misc *)
    Argv_cpr = 'You are going to compare ';
    Argv_fatal = 'Fatal:';
    Wrong_arg = 'Wrong argument detected. Please check for typos, or use app1 help to see program''s syntax.';
    Argv_warm_num = 'We need number(s) to do this action.';
    Argv_abort = 'Action aborted.';
    Clr = 'Clearing the screen...'; 
    Press_Enter = 'Press Enter to continue...';
    Enter_Exit = 'All done. Press Enter to exit...';
    Switch = 'Switching to main menu...';
    Argv_cal = 'You are running app1 in Calculator mode.';
    Argv_exit = 'To exit the application any time, use Ctr + Z (*NIX) or Ctrl + C (Windows).';
    // about
    Aboutl = 'About this application:';
    About2 = 'A simple program that can do basic calculations and comparation.';
    // use sLineBreak to move the cursor to the next line,
    // also use , to link texts
    Helper = 'Syntax:' + sLineBreak
            + 'app1 [cpr/cal] [sub-function] [2 numbers]' + sLineBreak
            + 'With: ' + sLineBreak
            + 'cpr : Compare 2 numbers' + sLineBreak
            + 'cal : Calculator, with basic maths:' + sLineBreak
            + '         add      : Calculate the "sum" of numbers' + sLineBreak
            + '         sub      : Calculate the  "difference" of numbers'+ sLineBreak
            + '         multiple : The first number * the second one' + sLineBreak
            + '         div      : The first number / the second one' + sLineBreak
            + '-----------------------------------------------------------------------' + sLineBreak
            + 'New: wrong-param  : If you run wrong parameter, use this to ignore all ' + sLineBreak
            + '                    parameters. The program will show nothing.' + sLineBreak
            + '-----------------------------------------------------------------------' + sLineBreak
            + 'app1cli - Do many calculations and compare with app1.';
Implementation
// nothing here
end. // EOF

