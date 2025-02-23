{ 
  Copyright (C) 2021-2025 Le Bao Nguyen

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

uses custapp, maths, resource, app1_utils, sysutils, crt;

type TApp1 = class(TCustomApplication)
protected
	procedure DoRun; override;

private
	procedure ShowHelp;
	procedure MainMenu;
	procedure Route_M;
	procedure Route_D;
	procedure EnterAndClear;
end;

procedure TApp1.DoRun;
var
	errorMsg: string;
	canExit: boolean = false;

begin
	(* Check for flags *)
	errorMsg := CheckOptions('hmdvn', ['help', 'multiply', 'divide', 'vietnamese']);
	if errorMsg <> '' then begin
		ShowHelp;
		Terminate;
		halt(1);
	end
	else if ParamCount >= 1 then begin

		if HasOption('n', 'vietnamese') then Vietnamese_Interface();

		if HasOption('v') then begin writeln(Startup_appver, '1.4.'); canExit := true; end

		else if HasOption('h', 'help') then begin ShowHelp; canExit := true; end;

		if canExit then begin
			Terminate;
			Exit;
		end;

		if HasOption('m', 'multiply') then Route_M;

		if HasOption('d', 'divide') then Route_D;

		if canExit then begin
			Terminate;
			Exit;
		end;

	end;

	(* Startup *)
	writeln(Startup_opening);
	Delay(1000);
	writeln(Startup_appname);
	Delay(1000);
	write(Startup_appver); textgreenln('1.4.');
	Delay(1000);
	write(Applocation); textgreenln(ParamStr(0));
	write(Timedate); textgreenln(DateTimeToStr(Now));

	(* Main menu *)
	MainMenu;

	Terminate;
end;

procedure TApp1.ShowHelp;
begin
	writeln(About1);
	writeln(About2);
	writeln(Helper);
end;

procedure TApp1.MainMenu;
var
	choice: integer;

begin
	writeln(Menu_welcome);

	writeln(StringOfChar('-', 30));
	writeln(StringOfChar(' ', 7), '1. ', Menu_multiply);
	writeln(StringOfChar(' ', 7), '2. ', Menu_divide);
	writeln(StringOfChar(' ', 7), '3. ', About1);
	writeln(StringOfChar(' ', 7), '4. ', Ask_exit);
	writeln(StringOfChar('-', 30));

	write(Ask_choice);
	readln(choice);

	case choice of
		1: begin
			Route_M;
			EnterAndClear;
		end;

		2: begin
			Route_D;
			EnterAndClear;
		end;

		3: begin
			ShowHelp;
			EnterAndClear;
		end;

		4: begin Terminate; Exit; end;
	end;
end;

procedure TApp1.EnterAndClear;
begin
	writeln(Press_Enter);
	readln;
	writeln(Clr); Delay(500);
	clrscr;
	MainMenu;
end;

procedure TApp1.Route_M;
var choice: string;
begin
	repeat
		write(M_Mode, Ask_home);
		readln(choice);

		if lowercase(choice) = 'y' then
		begin
			EnterAndClear;
			break;
		end;

		ask;
		doTheTask(false);
		textgreenln(StringOfChar('=', 30));
	until totalScore = 0;

	// blame;
	EnterAndClear;
end;

procedure TApp1.Route_D;
var choice: string;
begin
	repeat
		write(D_Mode, Ask_home);
		readln(choice);

		if lowercase(choice) = 'y' then
		begin
			EnterAndClear;
			break;
		end;

		ask;
		doTheTask(true);
		textgreenln(StringOfChar('=', 30));
	until totalScore = 0;

	// blame;
	EnterAndClear;
end;

var
	TAppObj: TApp1;

begin
	Randomize;
	TAppObj := TApp1.Create(nil);
	TAppObj.StopOnException := true;
	TAppObj.Run;
	TAppObj.Free;
end.
