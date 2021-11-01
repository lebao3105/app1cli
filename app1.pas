Program App1;
{$mode objFPC}
uses
    crt,
    sysutils; // use this to show the time

label
    menu, sub_menu, exit_program, sub_menu_cal, cal;

var
   choice : 1 .. 4;
   sub_choice_cal : 1 .. 10;
   sub_choice : 1 .. 3;
   number1, number2, y, answer : integer;
   number3, number4, x : real;

begin
    TextColor(Red);
    writeln('Starting...');
    TextColor(White);
    delay(3000);
    clrscr;
    writeln('App1 by Le Bao Nguyen.');
    delay(500);
    TextColor(2);
    writeln('Version 1.0.26');
    TextColor(White);
    delay(1000);
    clrscr;
    writeln('Welcome to app1! Choose one function to use this app now:');
//Main Menu
  menu:
   begin
   // I think I shouldn't let these in startup, so I leave it here:
    writeln ('The current time is : ',DateTimeToStr(Now));
    //Show the current program's path 
    writeln({$ifDef Darwin} // If the current os is macOS (or Darwin)
            'Program location: ',
            {$else}
            'Program location: ', // Other oses
            {$endif}
            paramStr(0));       
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
   writeln('Type your number:');
   TextColor(White);
   write('Number 1: '); TextColor(2); readln(number3);
   TextColor(White);
   write('Number 2: '); TextColor(2); readln(number4);
   TextColor(White);
    if number3 < number4 then
     begin
      writeln('Number 1 < Number 2');
      goto sub_menu;
     end;
    if number3 > number4 then
     begin
      writeln('Number 1 > Number 2');
      goto sub_menu;
     end;
   if number3 = number4 then
    begin
      writeln('number1 = number 2. Seems like you are typing the same number.');
      goto sub_menu;
    end;
  end;
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
     writeln('Type numbers:');
     write('Number 1: '); Textcolor(2); readln(number1);
     TextColor(White);
     write('Number 2: '); Textcolor(2); readln(number2);
     TextColor(White);
     x := number1 + number2;
     writeln('Answer is: ', x);
     goto sub_menu_cal;
   end;
  if sub_choice_cal = 2 then
   begin
     writeln('Type numbers:');
     write('Number 1: '); Textcolor(2); readln(number1);
     TextColor(White);
     write('Number 2: '); Textcolor(2); readln(number2);
     TextColor(White);
     x := number1 - number2;
     writeln('Answer is: ', x);
     goto sub_menu_cal;
   end;
  if sub_choice_cal = 3 then
   begin
     writeln('Type numbers:');
     write('Number 1: '); Textcolor(2); readln(number1);
     TextColor(White);
     write('Number 2: '); Textcolor(2); readln(number2);
     TextColor(White);
     x := number1 * number2;
     writeln('Answer is: ', x);
     goto sub_menu_cal;
   end;
  if sub_choice_cal = 4 then
   begin
     writeln('Type numbers:');
     write('Number 1: '); TextColor(2); readln(number1);
     TextColor(White);
     write('Number 2: '); TextColor(2); readln(number2);
     TextColor(White);
     x := number1 / number2;
     writeln('Answer is: ', x);
     goto sub_menu_cal;
   end;

  //Will go to Main Menu if answer = 5:
  if sub_choice_cal = 5 then
   begin
    clrscr;
    delay(500);
    goto menu;
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
     writeln('Type numbers:');
     write('Number 1 (a): '); TextColor(2); readln(number1);
     TextColor(White);
     write('Number 2 (b): '); TextColor(2); readln(number2);
     TextColor(White);
     write('Number 3 (x): '); TextColor(2); readln(y);
     TextColor(White);
     answer := (number1 + number2) * y;
     writeln('Answer is: ', answer);
     goto sub_menu_cal;
   end;

  //x(a-b)
  if sub_choice_cal = 2 then
   begin
     writeln('Type numbers:');
     write('Number 1 (a): '); TextColor(2); readln(number1);
     TextColor(White);
     write('Number 2 (b): '); TextColor(2); readln(number2);
     TextColor(White);
     write('Number 3 (x): '); TextColor(2); readln(y);
     TextColor(White);
     answer := (number1 - number2) * y;
     writeln('Answer is: ', answer);
     goto sub_menu_cal;
   end;

  //x^2 - a^2
  if sub_choice_cal = 3 then
   begin
     writeln('Type numbers:');
     write('Number 1: '); TextColor(White); readln(number1);
     TextColor(White);
     write('Number 2: '); TextColor(White); readln(number2);
     TextColor(White);
     answer := sqr(number1) - sqr(number2);
     writeln('Now you have: ', number1 ,'^2 - ',number2, '^2' );
     writeln('Answer is: ', answer);
     goto sub_menu_cal;
   end;

  //(a+b)^2
  if sub_choice_cal = 4 then
   begin
     writeln('Type numbers:');
     write('Number 1: '); TextColor(2); readln(number1);
     TextColor(White);
     write('Number 2: '); TextColor(2); readln(number2);
     TextColor(White);
     answer := sqr(number1 + number2);
     writeln('You have: (', number1, ' + ',number2,')^2');
     writeln('Answer is: ', answer);
     goto sub_menu_cal;
   end;

  //(a-b)^2
  if sub_choice_cal = 5 then
   begin
    writeln('Type numbers:');
    write('Number 1: '); TextColor(2); readln(number1);
    TextColor(White);
    write('Number 2: '); TextColor(2); readln(number2);
    TextColor(White);
    answer := Sqr(number1 - number2);
    writeln('Now we have:', '(', number1, '-', number2,')', '^2');
    writeln('The answer is: ', answer);
    goto sub_menu_cal;
  end;

  //a^3 + b^3 (ver 1.0.26)
  if sub_choice_cal = 6 then
   begin
    write('Type number 1 (a): '); TextColor(2); readln(number1);
    TextColor(White);
    write('Number 2 (b): '); TextColor(2); readln(number2);
    TextColor(White);
    answer := number1*number1*number1 + number2*number2*number2;
    writeln('Here is what you got: ', number1, '^3 + ',number2, '^3');
    writeln('The answer is: ', answer);
    goto sub_menu_cal;
   end;

  //(a+b)^3 (ver 1.0.26)
  if sub_choice_cal = 7 then
   begin
    write('Type number 1 (a): '); TextColor(2); readln(number1);
    TextColor(white);
    write('Type number 2 (b): '); TextColor(2); readln(number2);
    TextColor(white);
    answer := (number1 + number2) * (number1 + number2) * (number1 + number2);
    writeln('Here is what you got: (', number1, '+', number2, ')^3');
    writeln('Answer: ', answer);
    goto sub_menu_cal;
   end;

  //(a-b)^3 (ver 1.0.26)
  if sub_choice_cal = 8 then
   begin
    write('Type number 1 (a): '); TextColor(2); readln(number1);
    TextColor(White);
    write('Type number 2 (b): '); TextColor(2); readln(number2);
    TextColor(White);
    answer := (number1 - number2) * (number1 - number2) * (number1 - number2);
    writeln('Heres what you have: (',number1, '-',number2,')^3');
    writeln('The answer is: ', answer);
    goto sub_menu_cal;
   end;
  
  //a^3 - b^3 (ver 1.0.26)
  if sub_choice_cal = 9 then
   begin 
    write('Type number 1 (a): '); TextColor(2); readln(number1);
    TextColor(White);
    write('Type number 2 (b): '); TextColor(2); readln(number2);
    TextColor(White);
    answer := number1*number1*number1 - number2*number2*number2;
    writeln('Here is what you got: ', number1, '^3 + ',number2, '^3');
    writeln('The answer is: ', answer);
   end; 
  //Cancel:
  if sub_choice_cal = 10 then
   begin
    clrscr;
    delay(500);
    goto menu;
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
    writeln('About this app:');
    writeln('App1 Version 1.0.26');
    writeln('This application is written by Le Bao Nguyen in Pascal.');
    writeln('You can edit it, or redistribution it to everyone.');
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
    writeln('Current Version: 1.0.26:');
    writeln('This version is a small update.');
    writeln('Added new maths: (a-b)^3, (a+b)^3, a^3 + b^3');
    writeln('Show the current time and date while starting the program (Thanks to tutorialspoint)');
    writeln('Show the programs path in About section and home');
    readln();
   //1.0.25
    writeln('Available old version (not too old yet): 1.0.25');
    writeln('1.TextColor now available! When you use the program, TextColor will change the text color to the green,red, or white (default). Id like to make this app use GUI, but I dont have enough time to do this.');
    writeln('2.Change label exit -> exit_program to avoid unexpected error(!?)');
    writeln('3.Now you can install this application (oh, this is not important because you can share the binary file to other without any installer) via .exe setup file (yes, of course). I will create another installer for *NIX (Linux, BSD and macOS:)');
    writeln('4.Fix some layout bug.');
    writeln('5.Added Know issuses');
    writeln('6.Added some documents for you (not available now yet.)');
    readln();
   //1.0.2
    WriteLn('Old Version: 1.0.2:');
    WriteLn('1.Add new features: some advanced math(s), add more choices for exit');
    WriteLn('2.Fix goto exit -> goto Exit bug on line 228 and bugs while building');
    WriteLn('3.Add descriptions for codes (start by //, read the .pas - the main source code file to see it)');
    WriteLn('4.Now you can compare decimal numbers (just 2, of course)');
    WriteLn('5.Adjust the "return" direction of the calculator');
    Writeln('"Press Enter to continue..."');
    readln();
  //Q&A
    writeln('Q&A:');
    writeln('Q: What can it do?');
    writeln('A: Well, this application can compare 2 numbers, be a calculator (with at least 2 numbers, yep), and... nothing more:). OK, its just use for Pascal newbies to see how Pascal work.');
    writeln('Q: Can this app run on other operating system?');
    writeln('A: Yes! You can run it on ANY operating system, like Linux, Windows, BSD (I dont know will it work, but maybe yes) and macOS. Just install a Pascal compiler, and compile the .pas file, then open the generated .exe file.');
    writeln('Q: Will we have more features?');
    writeln('A: Yes. App1 always get new updates with new freatures, fix-bug and improves. Just use and wait for our new releases. Enjoy!');
    writeln('Press Enter...');
    Readln();
  //Know issuse(s)
    writeln('1. When users wants to exit the program, they will see the blinking cursor and nothing more happended. See the video in Github (lebao3105/app1cli). User still can exit by type 2 and press Enter or use Alt + F4.');
    writeln('2. *nothing more*');
    writeln('I will find and gather more bug and issuses here...');
    WriteLn('"All done. Press Enter to exit..."');
    readln();
    delay(1350);
    goto sub_menu;
  end;

//exit the program
  if choice = 4 then goto exit_program;

//ask to exit the program, or come back to main menu
 sub_menu:
   begin
      writeln('Are you want to go to Main Menu to do other actions, or exit?');
      TextColor(2);
      writeln('1.Go to Main Menu');
      TextColor(Red);
      writeln('2.Exit');
      TextColor(White);
      WriteLn('Please note that your choice cant be under 1.');
      Write('Your choice: '); readln(sub_choice);
       if sub_choice = 1 then goto menu;
       if sub_choice = 2 then goto exit_program;
       if sub_choice = 3 then
          begin
           writeln('Ya-hoo! You are unlocked the (very very easy) credit!');
           writeln('Thanks to...:');
           writeln('First is the Free Pascal (and Lazarus) documents - for Free Pascal Compiler and Pascal guides! ');
           writeln('Then is the Lazarus forum, Stack Overflow, and many webpages on the internet to help me solve the error;');
           writeln('And the final is my friends - for testing my application!');
           writeln('Ridecting you to the menu...');
           delay(1000);
           goto menu;
          end;
       if sub_choice > 3 then writeln('Oh hey, just choose 1 or 2. This number is not available. Try again:) '); write('Your choice: '); readln(sub_choice);
   end;

//try a new calculation, or return to the menu. If users want, exit the program
 sub_menu_cal:
  begin
     writeln('Are you want to try a new calculation, or return to the menu or exit the program?');
     writeln('1.Try new calculation');
     writeln('2.Return to Main Menu');
     TextColor(Red);
     WriteLn('3.Exit the program');
     TextColor(White);
     writeln('Enter your choice here: '); read(sub_choice);
       if sub_choice = 1 then goto cal;
       if sub_choice = 2 then goto menu;
       if sub_choice = 3 then goto exit_program;
  end;
//exit
exit_program:
   writeln('Are you sure want to exit the program? 1.Yes 2.No');
   write('Your choice: '); readln(sub_choice);
    if sub_choice = 2 then
     begin
      writeln('Switching to menu...');
      delay(1000);
      goto menu;
     end;
    if sub_choice = 3 then writeln('Oh hey, just choose 1 or 2. 3 is not available. Try again:) '); readln(sub_choice);
    if sub_choice = 1 then
     begin
      writeln('Thank you for using my application. Exiting now.');
      delay(1350);
     end;
  end.
