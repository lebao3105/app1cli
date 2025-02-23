unit resource;

Interface
{$h+}

var
	(* Some lines on startup *)
	Startup_opening: string = 'Starting...';
	Startup_appname: string = 'app1 from Le Bao Nguyen the developer.';
	Startup_appver: string = 'Version ';

	(* Program location and time-date *)
	Applocation: string = 'The current program location is (no purpose of printing this): ';
	Timedate: string = 'The current time: ';

	(* Now we are in the main menu *)
	Menu_welcome: string = 'Welcome to app1! Choose a route below to start: ';
    Menu_multiply: string = 'Multiply';
    Menu_divide: string = 'Divide';

    M_Mode: string = 'Using Multiply route. ';
    D_Mode: string = 'Using Divide route. ';

    (* Ask *)
    Ask_num1: string = 'Give the first number a value that is not 0 and 1: ';
    Ask_num2: string = 'Give the second number a value that is not 0 and 1: ';
    Ask_exit: string = 'Exit the program';
    Ask_home: string = 'Back to the main menu? [y/n] ';
    Ask_choice: string = 'Your choice: ';
    Ask_random2: string = 'Randomize the second number? [y/n] ';
    Ask_random1: string = 'Also the first number? [y/n] ';
    Ask_number2Smaller: string = 'Make the second number smaller than 10? [y/n] ';
    
    NumsSummary: string = 'The first number is %d, the second number is %d.';
    CalInput: string = 'Now tell us your calculation: ';

    Wrong_Answer: string = 'Oops: wrong answer:) A random point will be gone now.';
    Right_Answer: string = 'Good job! Now you have more points now.';
    Points_Lost: string = 'Lost %d points.';
    Points_Gained: string = 'Gained 5 points.';
    Points_Remaining: string = '%d points remaining.';
    Points_Same: string = 'Nevermind. You are still at 100, keep up your work!';

    (* Misc *)
    DivRemains: string = '%d % %d is not zero. The division leaves remains.';
    Clr: string = 'Clearing the screen...';
    Press_Enter: string = 'Press Enter/Return to continue...';
    
    About1: string = 'About this application:';
    About2: string =
        'A simple program that is made for kids who can not or want to know how to divide/multiply numbers.' + sLineBreak
        + 'You have one hundred points. Each wrong answers will cost you a random, non-zero and smaller-than-ten number of points.' + sLineBreak
        + 'Otherwise get 5 points or none (if you still have 100 points).' + sLineBreak
        + 'If you lose, do not panic, but learn more and try again.';

    Helper: string = 'Syntax:' + sLineBreak
            + 'app1 [flags, not required]' + sLineBreak
            + 'Available flags: ' + sLineBreak
            + '-v : Show the program version and peacefully exit' + sLineBreak
            + '-n OR --vietnamese : Use Vietnamese translation' + sLineBreak
            + '-h OR --help       : Show this paragraph and exit, again, peacefully.' + sLineBreak
            + '-m OR --multiply   : Enter Multiply mode, where you or your kids multiply numbers. Only 2 numbers though.'+ sLineBreak
            + '-d OR --divide     : Same as Multiply mode but with numbers being divided.' + sLineBreak
            + '-: The first number / the second one';

{$include resource_files.inc}

Implementation

{$define start_implementation}

{$include resource_files.inc}

end.

