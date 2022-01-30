(* English translation resource file for app1 
   You may want to run the change_lang script to set 
   the language before compile and run app1.
   The default language is English. *)
unit lang_en;
Interface
const // don't use resourcestring!
	(* Some lines in startup. 
        Application name and version also used in 3.Infomation. *)
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
    (* Argv - Parsing argument 
        These strings are used in app1_utils in non-text* functions;
        I use sLineBreak to break the current line and write next in the next one. 
        You can also use #13#10 in Windows. sLineBreak is platform-independent. *)
    Argv_Fatal = 'Fatal Error:';
    Argv_Missing = 'Missing argument(s) for this action.'+ sLineBreak +'Exiting.';
    Argv_Cal = 'app1 is ready to run in Calculator mode.'+ sLineBreak +'To exit this application everytime, use Ctrl+Z (UNIX?) and Ctrl+C (Windows).';
    (* Help - also used for parsing the arg *)
    
IMPLEMENTATION
// nothing here
end. // EOF

