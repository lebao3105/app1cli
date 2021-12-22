(* Noitce: maths unit sometimes cannot be recognized by FPC,
   so please compile maths.pas first, then try again. *)
Program app1;
{$mode objFPC}
uses
    crt,
    sysutils, // use this to show the time (and program's path?)
    maths; // my new unit, you should re-compile this unit first if FPC says unit not found

// Define some "labels"
label
    start, sub_menu, exit_program, cpr, cal, about;

var
    choice : 1 .. 4;
    sub_choice_cal : 1 .. 11;
    yes_no : string ; // replaces sub_choice
    //number1, number2, number3, answer : integer;    // These line are useless now
    //real1, real2, real_answer : real;               // with new unit

begin
    TextColor(Red);
    writeln('Starting...');
    TextColor(White);
    delay(3000);
    writeln('App1 by Le Bao Nguyen.');
    delay(500);
    TextColor(2);
    writeln('Version 1.0.27 RC');
    writeln('Code link: https://github.com/lebao3105/app1cli');
    TextColor(White);
    delay(1000);
    clrscr;

// now let's begin
  start:
   begin
   // I think I shouldn't let these in startup, so I leave it here:
    writeln ('The current time is : ',DateTimeToStr(Now));
    //Show the current program's path
    writeln({$ifDef Darwin} // If the current os is macOS (Darwin)
            'Program location: ',
            {$else}
            'Program location: ', // Other oses
            {$endif}
            paramStr(0));
    writeln('Welcome to app1! Choose a function to use this app now:');
    TextColor(2);
    writeln('1.Compare numbers');
    writeln('2.Simple calculator');
    writeln('3.Show infomation');
    TextColor(Red);
    writeln('4.Exit');
    TextColor(White);
    write('Type your choice here: '); TextColor(2); readln(choice);
    TextColor(White);
  end;
 //compare
 if choice = 1 then
  begin
  cpr:
    begin
    ask_2numbers();
    compare(number1,number2);
    goto sub_menu;
    end;
   end; // end of "cpr"
  end; // enf of choice = 1
  //calculator
   if choice = 2 then
   begin
cal:
   begin
     writeln('Choose your choice:');
     TextColor(2);
     writeln('1. +');
     writeln('2. -');
     writeln('3. *');
     writeln('4. /');
     TextColor(Red);
     writeln('5. Cancel');
     TextColor(White);
     writeln('6. Advanced math');
     write('Enter your answer: '); TextColor(2); readln(sub_choice_cal);
     TextColor(White);
   end;

  if sub_choice_cal = 1 then
   begin
     ask_2numbers();
     Add(number1, number2);
     goto sub_menu;
   end;

  if sub_choice_cal = 2 then
   begin
     ask_2numbers();
     Minus(number1, number2);
     goto sub_menu;
   end;

  if sub_choice_cal = 3 then
   begin
     ask_2numbers();
     Multiple(number1, number2);
     goto sub_menu;
   end;

  if sub_choice_cal = 4 then
   begin
     ask_2real();
     Divide(real1, real2);
     goto sub_menu;
   end;

  //Will go to Main Menu if answer = 5:
  if sub_choice_cal = 5 then
   begin
    clrscr;
    delay(500);
    goto start;
   end;

  //Advanced
  if sub_choice_cal = 6 then
   begin
   begin
    writeln('Choose your option: ');
    TextColor(2);
    writeln('1.x(a+b)');
    writeln('2.x(a-b)');
    writeln('3.x^2 - a^2');
    writeln('4.(a+b)^2');
    writeln('5.(a-b)^2');
    writeln('6.a^3 + b^3 (New)');
    writeln('7.(a+b)^3 (New)');
    writeln('8.(a-b)^3 (New)');
    writeln('9.a^3 - b^3 (New)');
    TextColor(Red);
    writeln('10.Cancel');
    writeln('11.Force exit the program');
    TextColor(White);
    write('Enter your choice: '); TextColor(2); readln(sub_choice_cal);
    TextColor(White);
   end;

  //x(a+b)
  if sub_choice_cal = 1 then
   begin
     ask_3numbers();
     one_for_total(number1, number2, number3);
     writeln('Now you have: ', number3,'(',number1,'+',number2,')');
     goto sub_menu;
   end;

  //x(a-b)
  if sub_choice_cal = 2 then
   begin
     ask_3numbers();
     one_for_minus(number1, number2, number3);
     writeln('Now you have: ', number3,'(',number1,'-',number2,')');
     goto sub_menu;
   end;

  //x^2 - a^2
  if sub_choice_cal = 3 then
   begin
     ask_2numbers();
     answer := sqr(number1) - sqr(number2);
     writeln('Now you have: ', number1 ,'^2 - ',number2, '^2' );
     writeln('Answer is: ', answer);
     goto sub_menu;
   end;

  //(a+b)^2
  if sub_choice_cal = 4 then
   begin
     ask_2numbers();
     answer := sqr(number1 + number2);
     writeln('You have: (', number1, ' + ',number2,')^2');
     writeln('Answer is: ', answer);
     goto sub_menu;
   end;

  //(a-b)^2
  if sub_choice_cal = 5 then
   begin
    ask_2numbers();
    answer := Sqr(number1 - number2);
    writeln('Now we have:', '(', number1, '-', number2,')', '^2');
    writeln('The answer is: ', answer);
    goto sub_menu;
  end;

  //a^3 + b^3 (ver 1.0.26)
  if sub_choice_cal = 6 then
   begin
    ask_2numbers();
    a3_add_b3(number1, number2, answer);
     writeln('Now you have: ', number1,'^3 + ',number2,'^3');
    goto sub_menu;
   end;

  //(a+b)^3 (ver 1.0.26)
  if sub_choice_cal = 7 then
   begin
    ask_2numbers();
    answer := (number1 + number2) * (number1 + number2) * (number1 + number2);
    writeln('Here is what you got: (', number1, '+', number2, ')^3');
    writeln('Answer: ', answer);
    goto sub_menu;
   end;

  //(a-b)^3 (ver 1.0.26)
  if sub_choice_cal = 8 then
   begin
    ask_2numbers();
    answer := (number1 - number2) * (number1 - number2) * (number1 - number2);
    writeln('Heres what you have: (',number1, '-',number2,')^3');
    writeln('The answer is: ', answer);
    goto sub_menu;
   end;

  //a^3 - b^3 (ver 1.0.26)
  if sub_choice_cal = 9 then
   begin
    ask_2numbers();
    a3_sub_b3(number1, number2, answer);
     writeln('Now you have: ', number1,'^3 - ',number2,'^3');
    goto sub_menu;
   end;
  //Cancel:
  if sub_choice_cal = 10 then
   begin
    clrscr;
    delay(500);
    goto cal;
   end;

  //Exit
  if sub_choice_cal = 11 then
   goto exit_program;
    end; //end for 6.Advanced
   end; //end for choice = 2

  //Infomation(s)
  if choice = 3 then
   begin
    clrscr;

  //About
  about:
   begin
    writeln('About this app:');
    writeln('   App1 Version 1.0.27 RC');
    writeln('   This application is written by Le Bao Nguyen in Pascal and released under the GNU GPL V3.');
    writeln('   You can edit it, or redistribution it to everyone.');
   //Show the current program's path
    writeln({$ifDef Darwin} // If the current os is macOS (or Darwin)
            'Program location: ',
            {$else}
            'Program location: ', // Other oses
            {$endif}
            paramStr(0));
    writeln('"Press Enter to continue"');
    Readln();
  //News
   //Curent
    writeln('Whats new on this version:');
<<<<<<< HEAD
    writeln('  Current Version: 1.0.27');
    writeln('   | 1.Replaced sub_choice to yes_no to ask the user for something. yes_no is a string value');
    writeln('   | 2.Merged sub_choice_cal and sub_choice_cpr');
    writeln('   | 3.Merged sub_choice and Infomation section');
    writeln('   | 4.Added colors to version number in Infomation');
    writeln('   | 5.Fully replaced readkey() to readln() in Infomation');
    writeln('   | 6.Almost all the calculations are using its own function');
    writeln('   | 7.Removed bugs (issues) section in application');
    writeln('  Press Enter to continue...');
    readln();
    //1.0.26
    writeln('  Available version: 1.0.26:');
    writeln('  This version is a update that come with new features, and major bug fix.');
    writeln('   | 1.Added new maths: (a-b)^3, (a+b)^3, a^3 + b^3');
    writeln('   | 2.Removed warning the choice cant be under 1 in sub_menu (see in source code);');
    writeln('   | 3.Show the current time and date while starting the program (Thanks to tutorialspoint)');
    writeln('   | 4.Show the programs path in About section and home');
    writeln('   | 5.Fixed the exit bug by...add the exit command (oh I forgot it, sorry)!');
    writeln('  Press Enter to continue...');
    readln();
   //1.0.25
    writeln('  Available old version (being old now): 1.0.25');
    writeln('   | 1.TextColor now available! When you use the program, TextColor will change the text color to the green,red, or white (default). Id like to make this app use GUI, but I dont have enough time to do this.');
    writeln('   | 2.Change label exit -> exit_program to avoid unexpected error(!?, now solved)');
    writeln('   | 3.Now you can install this application (oh, this is not important because you can share the binary file to other without any installer) via .exe setup file (yes, of course). I will create another installer for *NIX (Linux, BSD and macOS:)');
    writeln('   | 4.Fix some layout bug.');
    writeln('   | 5.Added Know issuses');
    writeln('   | 6.Added some documents for you (now closed)');
=======
    writeln(' Current Version: '); TextColor(2); writeln('1.0.26:'); TextColor(White);
    writeln(' This version is a update that come with more new features, and major bug fix.');
    writeln('   1.Added new maths: (a-b)^3, (a+b)^3, a^3 + b^3');
    writeln('   2.Removed warning the choice cant be under 1 in sub_menu (see in source code);');
    writeln('   3.Show the current time and date while starting the program (Thanks to tutorialspoint)');
    writeln('   4.Show the programs path in About section and home');
    writeln('   5.Fixed the exit bug by...add the exit command (oh I forgot it, sorry)!');
    writeln(' Press Enter to continue...');
    readln();
   //1.0.25
    write(' Available old version (ready to old now):'); TextColor(Yellow); writeln('1.0.25'); TextColor(White);
    writeln('   1.TextColor now available! When you use the program, TextColor will change the text ');
    writeln('   color to the green,red, or white (default).');
    writeln('   2.Change label exit -> exit_program');
    writeln('   3.Now you can install this application (if you want)');
    writeln('   4.Fix some layout bug.');
    writeln('   5.Added Know issuses (now removed in 1.0.26)');
    writeln('   6.Added some documents for you (now cancelled)');
    writeln(' Press Enter to continue...');
    readln();
    TextColor(2);
    WriteLn(' All done. Press Enter to exit...');
    TextColor(White);
    readln();
    delay(1350);
    writeln('Clearing the screen...');
    delay(500);
    clrscr;
    // ask now (take from sub_menu)
      writeln('Are you want to go to Main Menu to do other actions, or exit?');
      TextColor(2);
      writeln('1.Go to Main Menu');
      TextColor(Red);
      writeln('2.Exit');
      TextColor(White);
      Write('Your choice [menu/exit]: '); readln(yes_no);
       if yes_no = 'menu' then goto start;
       if yes_no = 'exit' then goto exit_program;
       if yes_no = 'credit' then
          begin
           writeln('You are unlocked the (very very easy) credit screen!');
           writeln('Thanks to...:');
           writeln('First is the Free Pascal (and Lazarus) documents - for Free Pascal Compiler and Pascal guides! ');
           writeln('Then is the Lazarus forum, Stack Overflow, and many webpages on the internet to help me solve the error;');
           writeln('And the final is my friends - for testing this application!');
           writeln('Ridecting you to the menu...');
           delay(1000);
           goto start;
          end;
  end;
 end;

//exit the program
  if choice = 4 then goto exit_program;

(* try a new calculation, compare more, or return to the menu. If users want, exit the program.
i merged sub_menu_cal and sub_menu_cpr and now we have this: *)
 sub_menu:
  begin
     writeln(); // add one more line
     writeln('Are you want to try a new calculation, compare new numbers,');
     writeln('return to the menu or exit the program?');
     writeln('1.Try new calculation');
     writeln('2.Compare again');
     writeln('3.Return to Main Menu');
     TextColor(Red);
     WriteLn('4.Exit the program');
     TextColor(White);
     write('Enter your choice here [new/cpr/back/exit]: '); readln(yes_no);
       if yes_no = 'new' then goto cal
       else if yes_no = 'cpr' then goto cpr
       else if yes_no = 'back' then goto start
       else if yes_no = 'exit' then goto exit_program
       else write('Invaild asnwer. Please try again'); readln(yes_no);
  end;
  
 //ask the user after compared
 sub_menu_cpr:
   begin
     writeln(); // Add one more line
     write('Compare more? [yes/no/exit]'); readln(yes_no);
       if yes_no = 'yes' then goto cpr;
       if yes_no = 'no' then goto menu;
       if yes_no = 'exit' then goto exit_program;
   end;

//exit
exit_program:
   writeln('Are you sure want to exit the program?');
   writeln('If you want choose "no", you will be come back to the main menu.');
   write('Your choice: '); readln(yes_no);
    if yes_no = 'yes' then
     begin
      writeln('Thank you for using my application. Exiting now.');
      delay(1300);
      exit;
     end
    else if yes_no = 'no' then
     begin
      writeln('Switching to menu...');
      delay(1000);
      goto start;
     end;
   else write('Invaild answer. Please try again.'); readln(yes_no);
  end.
