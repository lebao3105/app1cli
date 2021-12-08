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
  uses crt;
  var param:string;

(* Warm the user if they don't have enough numbers to do action*)
procedure warm_num();
  begin
	   writeln('app1cli version 1.0.2x+ps by Le Bao Nguyen.');
	   TextColor(Red); writeln('Fatal: '); 
	   TextColor(White); writeln('We need one more number to do this action.');
	   writeln('Action aborted.');
  end;

(* Show the help box *)  
procedure help();
  begin
    writeln('app1cli version 1.0.2x+ps by Le Bao Nguyen.');
    writeln('Syntax: app1 [cmd] [options/numbers] [more options if have/needed]');
    writeln('cpr [only 2 numbers]: compare numbers');
    writeln('cal : do some calculations');
    writeln('  | [plus/sub/multi/div] [number1] [number2] : do basic maths (add,subtract,multiple,divide) with 2 numbers.');
    writeln('  | adv ["formula" numbers from 1 to 9] [2 or 3 numbers]: do advanced maths');
    writeln('    \  formula(s):');        
    write('       | 1.x(a+b)');               writeln('             3 numbers required');
    writeln('       | 2.x(a-b)');
    write('       | 3.x^2 - a^2');            writeln('          2 numbers required');
    writeln('       | 4.(a+b)^2'); 
    writeln('       | 5.(a-b)^2');
    writeln('       | 6.a^3 + b^3');
    writeln('       | 7.(a+b)^3');
    writeln('       | 8.(a-b)^3');
    writeln('       | 9.a^3 - b^3');
    writeln();
    writeln('------ END OF BOTH ADV and CAL ------');
    writeln('about : Show infomations about this application');
    writeln('help : Show this box and exit');
    write('Press '); TextColor(2); write('Enter'); TextColor(White); writeln(' to continue');
    readln();
    writeln('help: show this help box and exit');
    TextColor(Red); writeln('Flags '); TextColor(White); writeln('(not available yet.)');
    writeln('-v/verbose : Explain what are you doing; ');
    writeln('--more [cmd...] : Do some thing more after done the action.')
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