unit app1_utils;
{$mode delphi}
Interface
  procedure warm_num();
  procedure warm_cal();
  procedure help();
  procedure textredln(param:string);  
  procedure textgreenln(param:string);
  procedure textgreen(param:string);
  procedure textred(param:string);

Implementation
uses crt, resource;

// Warm the user if they don't have enough numbers to do action 
procedure warm_num();
begin
	writeln(Startup_appname);
	write(Startup_appver);
	textgreenln('1.4');
	TextColor(LightGray);
	textred(Argv_fatal); 
	TextColor(LightGray); writeln(Argv_warm_num);
	writeln(Argv_abort);
	exit;
end;

// Notify the user that they are in Calculator mode
procedure warm_cal();
begin
	writeln(Startup_appname);
	write(Startup_appver);
	textgreenln('1.4');
	TextColor(LightGray);
	writeln(Argv_cal);
	writeln(Argv_exit);
end;

// Show the help box 
procedure help();
begin
	writeln(Startup_appname);
	writeln(Startup_appver);
	textgreenln('1.4');
	TextColor(LightGray);
	writeln(Helper);
end;

(* Write colored text line. 
If you want to write multi lines , don't change the TextColor 
to other color after run the function. *)
procedure textredln(param:string);
begin
	TextColor(Red);
	writeln(param); 
end;  

procedure textgreenln(param:string);
begin
	TextColor(2);
	writeln(param); 
end;

// Just write a line and don't move cursor to the next line 
procedure textred(param:string);
begin
	TextColor(Red);
	write(param); 
end;

procedure textgreen(param:string);
begin
	TextColor(2);
	write(param); 
end;

end.    
