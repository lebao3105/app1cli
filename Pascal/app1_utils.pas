(* These are the ultilities for app1, 
   you can get and customize it for your application. *)
unit app1_utils;
Interface
  procedure warm_num();
  procedure warm_cal();
  procedure help();
  procedure textredln(param:string);  
  procedure textgreenln(param:string);
  procedure textgreen(param:string);
  procedure textred(param:string);
IMPLEMENTATION
  uses crt, lang_en;

(* Warm the user if they don't have enough numbers to do action*)
procedure warm_num();
  begin
	   write(Startup_appname, Startup_appver);
     textgreenln(' 1.0.28');
     TextColor(White);
	   textredln(Argv_fatal); 
	   TextColor(White); writeln(Argv_warm_num);
	   writeln(Argv_abort);
     exit;
  end;
procedure warm_cal();
  begin
	   write(Startup_appname, Startup_appver);
     textgreenln(' 1.0.28');
     TextColor(White);
     writeln(Argv_cal);
     writeln(Argv_exit);
  end;

(* Show the help box *)  
procedure help();
  begin
	   write(Startup_appname, Startup_appver);
     textgreenln(' 1.0.28');
     TextColor(White);
     writeln(Help);
  end;

  (* Write colored line. 
     If you want to write multi lines , don't change the TextColor 
     to other color after run this function. *)
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

  (* Just write a line and don't move cursor to the next line *)
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