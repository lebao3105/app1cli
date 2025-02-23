unit app1_utils;

Interface

(* textred but writes a line break character at the end *)
procedure textredln(param: string);

(* textgreen but writes a line break character at the end *)
procedure textgreenln(param: string);

(* prints param with green color *)
procedure textgreen(param: string);

(* prints param with red color *)
procedure textred(param: string);

Implementation

uses crt, resource;

procedure textredln(param:string);
begin
	textred(param + sLineBreak);
end;  

procedure textgreenln(param:string);
begin
	textgreen(param + sLineBreak);
end;

procedure textred(param:string);
begin
	TextColor(Red);
	write(param);
	TextColor(LightGray);
end;

procedure textgreen(param:string);
begin
	TextColor(2);
	write(param);
	TextColor(LightGray);
end;

end.    
