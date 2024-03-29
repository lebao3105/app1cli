{ 
  Copyright (C) 2021-2022 Le Bao Nguyen

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <https://www.gnu.org/licenses/>.
  ----------------------------------------------------------------------
  app1.pas - Main Program file which links everything together 
  Future improvements are in /TODO file, read it if you want.
}

Program App1;
{$mode objFPC}
{$apptype console}
uses
	crt,
	sysutils, 
	resource,
	gettext,
	app1_utils, 
	maths; 

label
	start, sub_menu, exit_program, cpr, cal, about;

type
	arr= array[0..3] of string;

var
	choice : 1 .. 4;
	sub_choice_cal : 1 .. 11;
	yes_no : string;
	n, i : integer;
	arrayd : arr;
	whatlang : string = 'en';

begin
  if ParamCount = 0 then begin 
	TextColor(Red);
	writeln(Startup_opening);
	TextColor(LightGray);
	delay(3000);
	writeln(Startup_appname);
	delay(500);
	TextColor(2);
	writeln(Startup_appver, '1.4');
	TextColor(LightGray);
	delay(1000);
	clrscr;

	// now let's begin
	start:
   		begin
		// set the language first
			if whatlang = 'en'
			then
  				translateresourcestrings('po/en/app1cli.mo')
			else if whatlang = 'vi'
			then
				translateresourcestrings('po/vi/app1cli.mo');
			writeln (Timedate,DateTimeToStr(Now));
			//Show the current program's path
			writeln(Applocation, paramStr(0));
			writeln(Menu_welcome);
			TextColor(2);
			writeln('------------------------------');
			writeln('       1.', Menu_item1);
			writeln('       2.', Menu_item2);
			writeln('       3.', Menu_item3);
			TextColor(Red);
			writeln('       4.', Menu_item4);
			writeln('------------------------------');
			TextColor(LightGray);
			write(Menu_ask);  
			readln(choice); 
			TextColor(LightGray);
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
	  writeln(Select, Select2 , Cal_Adv);
	  TextColor(2);
	  writeln('----------------');
	  writeln('     1. +');
	  writeln('     2. -');
	  writeln('     3. *');
	  writeln('     4. /');
	  TextColor(Red);
	  writeln('     5. ', Cancel);
	  TextColor(LightGray);
	  writeln('     6. ', Cal_Adv);
	  writeln('----------------');
	  write(Menu_ask); 
	  //TextColor(2); 
	  readln(sub_choice_cal);
	  //TextColor(LightGray);
	end;
	while (sub_choice_cal >=1) and (sub_choice_cal <=3) do begin
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
		writeln('____________________________');
		writeln('         1. x(a+b)');
		writeln('         2. x(a-b)');
		writeln('         3. x^2 - a^2');
		writeln('         4. x^2 + a^2');
		writeln('         5. (a+b)^2');
		writeln('         6. (a-b)^2');
		writeln('         7. a^3 + b^3');
		writeln('         8. a^3 - b^3');
		writeln('         9. (a-b)^3');
		writeln('        10. (a+b)^3 ');
		writeln('____________________________');
		TextColor(Red);
		writeln('11.', Cancel);
		writeln('12.', Cal_Exit);
		TextColor(LightGray);
		write(Menu_ask); 
		TextColor(2); 
		readln(sub_choice_cal);
		TextColor(LightGray);
	while (sub_choice_cal >=1) and (sub_choice_cal <=10) do begin
	// ask the user
	  case (sub_choice_cal) of
		1 .. 2: ask_3numbers();
		3 .. 10: ask_2numbers();
	  end;
	// then do calculate, there may be a bit of inconvenience here, isn't it? 
	  case (sub_choice_cal) of
		1: one_for_total(number1,number2,number3);
		2: one_for_minus(number1,number2,number3);
		3: writeln(Cal_Ans, sqr(number1) - sqr(number2));
		4: writeln(Cal_Ans, sqr(number1) + sqr(number2));
		5: writeln(Cal_Ans, sqr(number1 + number2));
		6: writeln(Cal_Ans, sqr(number1 - number2));
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
	writeln(Aboutl);
	writeln('---------------------------------------------------------------------------');
	writeln('App1 '+Startup_appver+'1.3.'); 
	writeln(Applocation, paramStr(0));
	writeln(About2);
	writeln('---------------------------------------------------------------------------');
	// Don't translate this!
	writeln('Copyright (C) 2022 Le Bao Nguyen.');
	writeln('This program comes with ABSOLUTELY NO WARRANTY; for details type show w,');
	writeln('This is free software, and you are welcome to redistribute it');
	writeln('under certain conditions; type show c for details.');
	writeln(Press_Enter);
	Readln();
	delay(1350);
	writeln(Clr);
	delay(500);
	clrscr;
	// ask now (take from sub_menu)
	  writeln(Ask_other);
	  TextColor(2);
	  writeln('1.', Ask_home);
	  TextColor(Red);
	  writeln('2.', Menu_item4);
	  TextColor(LightGray);
	  Write(Ask_choice, '[menu/exit] '); readln(yes_no);
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
	 writeln(Ask_other);
	 writeln('1.', Ask_cal);
	 writeln('2.', Menu_item1);
	 writeln('3.', Ask_back);
	 TextColor(Red);
	 WriteLn('4.', Ask_exit);
	 TextColor(LightGray);
	 write(Ask_choice, ' [new/cpr/back/exit]: '); readln(yes_no);
	   if yes_no = 'new' then goto cal
	   else if yes_no = 'cpr' then goto cpr
	   else if yes_no = 'back' then goto start
	   else if yes_no = 'exit' then goto exit_program;
  end;

//exit
exit_program:
   writeln();
   writeln(Exit_ask);
   writeln(Exit_ask_2);
   write(Ask_choice ,'[yes/no]: '); readln(yes_no);
	if (yes_no = 'yes') or (yes_no = 'y') then
	 begin
	  writeln(Exit_bye);
	  writeln(Exit_out);
	  delay(1300);
	  exit;
	 end
	else if (yes_no = 'no') or (yes_no = 'n') then
	begin
	  writeln(Switch);
	  delay(1000);
	  goto start;
	end;
  end

  // this does not working normally yet:(
  else if ParamCount >= 1 then begin
	  // initialize the array
  	arrayd[0] := 'add';
  	arrayd[1] := 'minus';
  	arrayd[2] := 'multiple';
  	arrayd[3] := 'div';

	for n := 1 to ParamCount do begin // loop (a)
	  
	  	// compare
		if ParamStr(n) = 'cpr' then begin
			if (ParamStr(n+1) = '') or (ParamStr(n+2) = '') then
				warm_num()
			else begin
				writeln(Argv_cpr, ParamStr(n+1), ' ', ParamStr(n+2));
				compare(StrToInt(ParamStr(n+1)), StrToInt(ParamStr(n+2)));
			end;
		end;

	  	// calculator
			if ParamStr(n) = 'cal' then
			begin
		  if Length(ParamStr(n+1)) = 0 then
		  begin
			writeln(Argv_cal);
			goto cal;
		  end;

				// check if we are missing arguments
				for i := 0 to 3 do begin
			if ParamStr(n+1) = arrayd[i] then begin
						if (ParamStr(n+2) = '') or (ParamStr(n+3) = '') then
						  begin
							  warm_num();
							  halt(1);
						  end;
					end;
				end;

				// now do math
				case ParamStr(n+1) of
					'add': add(StrToInt(ParamStr(n+2)), StrToInt(ParamStr(n+3)));
					'minus': minus(StrToInt(ParamStr(n+2)), StrToInt(ParamStr(n+3)));
					'multiple': multiple(StrToInt(ParamStr(n+2)), StrToInt(ParamStr(n+3)));
					'div': begin
							real1 := StrToInt(ParamStr(n+2)) + 0.0;
							real2 := StrToInt(ParamStr(n+3)) + 0.0;
							divide(real1, real2);
						end;
				end;
			end;

		// others parameters
		if ParamStr(n) = 'about' then 
			goto about
		else if ParamStr(n) = 'help' then 
			help()
		else if ParamStr(n) = 'wrong-param' then
			exit()
		else if ParamStr(n) = 'lang' then
			if ParamStr(n+1) = 'eng' then
				whatlang := 'en'
			else if ParamStr(n+1) = 'vi' then
				whatlang := 'vi';
			goto start;
	end; // end of (a) loop block
	end;
end.
