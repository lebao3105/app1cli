(* English translation resource file for app1 
   You may want to run the change_lang script to set 
   the language before compile and run app1.
   The default language is English. *)
unit lang_en;
Interface
const // don't use resourcestring!
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
    (* Argv *)
    Argv_Fatal = 'Fatal Error:';
    Argv_Cal_Missing = 'Missing argument(s) for this action.'#13#10'Exiting.';

IMPLEMENTATION
// nothing here
end. // EOF

