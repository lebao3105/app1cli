(* This unit used to do many calculations which are featured in app1cli. 
    This unit is a part of the application, so you have to use this file
    but follow the GNU GPL V3 License. *)
Unit maths;

Interface
var number1, number2, number3, answer: integer;
    real1, real2, real_answer: real;

Function add(number1, number2: Integer): integer;
Function minus(number1, number2: Integer): integer;
Function multiple(number1, number2: Integer): integer;
Function divide(real1, real2:real): real;
Function compare(number1, number2:integer):integer;
Function one_for_total(number1, number2, number3: integer): integer;
Function one_for_minus(number1, number2, number3: integer): integer;
Function ask_2real():real;
Function ask_2numbers():integer;
Function ask_3numbers():integer;
Function a3_sub_b3(number1, number2:integer):integer;
Function a3_add_b3(number1, number2: integer):integer;
Function total2_3exp(number1,number2:integer):integer;
Function minus2_3exp(number1,number2:integer):integer;
IMPLEMENTATION
uses crt, sysutils, lang_en;
    Function add(number1, number2: Integer): integer;
    Begin
        answer := number1 + number2;
        writeln(Cal_Ans, answer);
    End;

    Function minus(number1, number2: Integer): integer;
    Begin
        answer := number1 - number2;
        writeln(Cal_Ans, answer);
    End;

    Function multiple(number1, number2: Integer): integer;
    Begin
        answer := number1 * number2;
        writeln(Cal_Ans, answer);
    End;

    Function divide(real1, real2: real): real;
    Begin
        real_answer := real1 / real2;
        writeln(Cal_Ans, real_answer);
    End;

    Function one_for_total(number1, number2, number3: integer): integer;
    Begin
        answer := (number1 + number2) * number3;
        writeln(Cal_Ans, answer);
    end;

    Function compare(number1, number2:integer):integer;
    begin
        if number1 < number2 then
            writeln(Cpr_Smaller);
        if number1 > number2 then
            writeln(Cpr_Bigger);
        if number1 = number2 then
            writeln(Cpr_Both);
    end;

    Function one_for_minus(number1, number2, number3: integer): integer;
    Begin
        answer := (number1 - number2) * number3;
        writeln(Cal_Ans, answer);
    end;

    Function a3_sub_b3(number1, number2: integer): integer;
    begin
        answer := number1*number1*number1 - number2*number2*number2;
        writeln(Cal_Ans, answer);
    end;

    Function a3_add_b3(number1, number2: integer): integer;
    begin
        answer := number1*number1*number1 + number2*number2*number2;
        writeln(Cal_Ans, answer);
    end;

    // ask the user for the numbers
    Function ask_2numbers(): integer;
    begin
       write(Ask_num1); TextColor(2); readln(number1);
       TextColor(LightGray);
       write(Ask_num2); TextColor(2); readln(number2);
       TextColor(LightGray);
    end;

    Function ask_3numbers(): integer;
    begin
        write(Ask_num1); TextColor(2); readln(number1);
        TextColor(LightGray);
        write(Ask_num2); TextColor(2); readln(number2);
        TextColor(LightGray);
        write(Ask_num3); TextColor(2); readln(number3);
        TextColor(LightGray);
    end;

    Function ask_2real():real;
    begin
        write(Ask_num1); TextColor(2); readln(real1);
        TextColor(LightGray);
        write(Ask_num2); TextColor(2); readln(real2);
        TextColor(LightGray);
    end;

    // new calculator functions
    Function total2_3exp(number1,number2:integer):integer;
    begin
        answer := (number1 + number2) * (number1 + number2) * (number1 + number2);
        writeln(Cal_Ans, answer);
    end;

    Function minus2_3exp(number1,number2:integer):integer;
    begin
        answer := (number1 - number2) * (number1 - number2) * (number1 - number2);
        writeln(Cal_Ans, answer);
    end; 
END.
