(* These are the ultilities for app1, 
   you can get and customize it for your application. *)
unit app1_utils;
Interface
  procedure warm_argv();
  procedure warm_cal();
  procedure help();
  procedure textredln(param:string);  
  procedure textgreenln(param:string);
  procedure textgreen(param:string);
  procedure textred(param:string);
  //function textcolor(color:integer; text:string):integer;
IMPLEMENTATION
  uses 
      crt, lang_en;

(* Warm the user if they don't have enough numbers to do action*)
procedure warm_argv();
  begin
	   textredln(Argv_Fatal); 
	   TextColor(White); writeln(Argv_Missing);
     exit;
  end;
procedure warm_cal();
  begin
     writeln(Argv_Cal);
  end;

(* Show the help box *)  
procedure help();
  begin
     writeln('app1 ', Startup_appver, '1.0.28+ps');
     writeln();
  end;
  (* Write colored line. 
     If you want to write multi lines with one color, don't change the TextColor 
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

// function to use any color you want, at this time I don't need it yet.
  (* function textcolor(color:integer; text:string):integer;
  begin
      TextColor(color);
      write(text);
  end; 
    function textcolor(color:string, text:string)
  begin
      TextColor(color);
      write(text);
  end; *)
end.    