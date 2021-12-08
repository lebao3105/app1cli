(* This is the development version of app1 and it may not give you
   the best experience. So if you want to use a more stable version, 
   tou can try app1 1.0.27. *)
Program app1;
{$mode objFPC} // Object Pascal mode
uses crt, maths, sysutils,app1_utils; //loads needed library
label start,cpr, cal, about;
(* Let's start. The first is setup our command-line arguments*) 
begin
  if ParamCount = 1  then// if the user use 1 argument (not the file name)
  begin  
  	if ParamStr(1) = 'cpr' then goto cpr;
  	if ParamStr(1) = 'cal' then goto cal;
  	if ParamStr(1) = 'about' then goto about;
    if ParamStr(1) = 'help' then begin help(); exit; end;
  	if ParamStr(1) = '' then goto start;    
  end;
  if ParamCount >= 2 then
  begin	
    if ParamStr(1) = 'cpr' then
        if ParamStr(2) = '' then begin warm_num(); exit end
        else if ParamStr(3) = '' then begin warm_num(); exit end
        else begin compare(StrToInt(ParamStr(2)), StrToInt(ParamStr(3))); exit end // if both the second and third ParamStr have value. 
        else begin goto cal; end; 
    if ParamStr(1) = 'cal' then 
        if ParamStr(2) = 'add' then 
            if ParamStr(3) = '' then begin warm_num(); exit end
            else if ParamStr(4) = '' then begin warm_num(); exit end
            else begin Add(StrToInt(ParamStr(3)), StrToInt(ParamStr(4))); exit end
            else begin ask_2numbers(); Add(number1,number2); exit end
  end;
  start: 
  begin
    writeln('hello');
    writeln(ParamStr(1));
    writeln(ParamStr(2));
    textredln('hello world!');
  cpr:
    writeln('yey');
  cal:
    writeln('hoo');
  about:
    writeln('jjj');
 end;
end.       