Program App1;
{$mode objFPC}
uses
    crt,
    sysutils, 
    lang_en,
    app1_utils, 
    maths; 

label
    start, sub_menu, exit_program, cpr, cal, about;

var
    choice : 1 .. 4;
    sub_choice_cal : 1 .. 11;
    yes_no : string ; 

begin
    TextColor(Red);
    writeln(Startup_opening);
    TextColor(White);
    delay(3000);
    writeln(Startup_appname);
    delay(500);
    TextColor(2);
    writeln(Startup_appver, '1.0.28+ps');
    TextColor(White);
    delay(1000);
    clrscr;

// now let's begin
  start:
   begin
    writeln (Timedate,DateTimeToStr(Now));
    //Show the current program's path
    writeln({$ifDef Darwin} // If the current os is macOS (Darwin)
            Applocation,
            {$else}
            Applocation, // Other oses
            {$endif}
            paramStr(0));
    writeln(Menu_welcome);
    TextColor(2);
    writeln('1.', Menu_item1);
    writeln('2.', Menu_item2);
    writeln('3.', Menu_item3);
    TextColor(Red);
    writeln('4.', Menu_item4);
    TextColor(White);
    write(Menu_ask); TextColor(2); readln(choice);
    TextColor(White);
  end;
 //compare
if choice = 1 then
  cpr:
    begin
    ask_2numbers();
    compare(number1,number2);
    goto sub_menu;
   end; // end of "cpr"

  //calculator
if choice = 2 then begin  
cal:
   begin
     writeln(Select, 'Or you can get more with ', Cal_Adv);
     TextColor(2);
     writeln('1. +');
     writeln('2. -');
     writeln('3. *');
     writeln('4. /');
     TextColor(Red);
     writeln('5. ', Cancel);
     TextColor(White);
     writeln('6. ', Cal_Adv);
     write(Menu_ask); TextColor(2); readln(sub_choice_cal);
     TextColor(White);
   end;
   if (sub_choice_cal >=1) and (sub_choice_cal <=3) then begin
    ask_2numbers();
    case (sub_choice_cal) of
      1: Add(number1, number2);
      2: Minus(number1, number2); 
      3: Multiple(number1, number2);
    end;
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
    writeln(Select);
    TextColor(2);
    writeln('1.x(a+b)');
    writeln('2.x(a-b)');
    writeln('3.x^2 - a^2');
    writeln('4.x^2 + a^2'); // add new formula
    writeln('5.(a+b)^2');
    writeln('6.(a-b)^2');
    writeln('7.a^3 + b^3');
    writeln('8.a^3 - b^3');
    writeln('9.(a-b)^3');
    writeln('10.(a+b)^3 ');
    TextColor(Red);
    writeln('11.', Cancel);
    writeln('12.', Cal_Exit);
    TextColor(White);
    write(Menu_ask); TextColor(2); readln(sub_choice_cal);
    TextColor(White);
    if (sub_choice_cal >=1) and (sub_choice_cal <=10) then begin
    // ask the user
      case (sub_choice_cal) of
        1 .. 2: ask_3numbers();
        3 .. 10: ask_2numbers();
      end;
    // then do calculate, there may be a bit of inconvenience here, isn't it? 
      case (sub_choice_cal) of
        1: one_for_total(number1,number2,number3);
        2: one_for_minus(number1,number2,number3);
        3: writeln('The answer is ', sqr(number1) - sqr(number2));
        4: writeln('The answer is ', sqr(number1) + sqr(number2));
        5: writeln('The answer is ', sqr(number1 + number2));
        6: writeln('The answer is ', sqr(number1 - number2));
        7: a3_add_b3(number1, number2);
        8: a3_sub_b3(number1, number2);
        9: minus2_3exp(number1, number2);
        10: total2_3exp(number1,number2);
      end;
      goto sub_menu;
    end;

    //Cancel:
    if sub_choice_cal = 11 then
      begin
        clrscr;
        delay(500);
        goto cal;
    end;
    
     //Exit
    if sub_choice_cal = 12 then goto exit_program;
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
    writeln('   App1 Version 1.0.28.'); 
    writeln('   This application is released under the GNU GPL V3.');
    writeln('   You can edit it, or redistribution it to everyone.');
   //Show the current program's path
    writeln({$ifDef Darwin} // If the current os is macOS (or Darwin)
            Applocation,
            {$else}
            Applocation, // Other oses
            {$endif}
            paramStr(0));
    writeln('"Press Enter to continue"');
    Readln();
  //News
   //Curent
    writeln('Whats new on this version:');
    write(' Current Dev Version: '); textgreenln('1.0.28:'); TextColor(White);
    // not available now
    writeln(' Press Enter to continue...');
    readln();
    write('Current stable version: '); textgreenln('1.0.27'); TextColor(White);
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
     writeln('2.Compare');
     writeln('3.Return to Main Menu');
     TextColor(Red);
     WriteLn('4.Exit the program');
     TextColor(White);
     write('Enter your choice here [new/cpr/back/exit]: '); readln(yes_no);
       if yes_no = 'new' then goto cal
       else if yes_no = 'cpr' then goto cpr
       else if yes_no = 'back' then goto start
       else if yes_no = 'exit' then goto exit_program;
  end;

//exit
exit_program:
   writeln();
   writeln('Are you sure want to exit the program?');
   writeln('If you want choose "no", you will be come back to the main menu.');
   write('Your choice [yes/no]: '); readln(yes_no);
    if yes_no = 'yes' then
     begin
      writeln('Thank you for using my application. Exiting now.');
      delay(1300);
      exit;
     end
    else if yes_no = 'no' then
      writeln('Switching to menu...');
      delay(1000);
      goto start;
  end.
