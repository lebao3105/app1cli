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
uses crt, sysutils;
    Function add(number1, number2: Integer): integer;
    Begin
        answer := number1 + number2;
        writeln('The answer is: ', answer);
    End;

    Function minus(number1, number2: Integer): integer;
    Begin
        answer := number1 - number2;
        writeln('The answer is: ', answer);
    End;

    Function multiple(number1, number2: Integer): integer;
    Begin
        answer := number1 * number2;
        writeln('The answer is: ', answer);
    End;

    Function divide(real1, real2: real): real;
    Begin
        real_answer := real1 / real2;
        writeln('The answer is: ', real_answer);
    End;

    Function one_for_total(number1, number2, number3: integer): integer;
    Begin
        answer := (number1 + number2) * number3;
        writeln('The answer is: ', answer);
    end;

    Function compare(number1, number2:integer):integer;
    begin
        if number1 < number2 then
            writeln('Number 1 < Number 2');
        if number1 > number2 then
            writeln('Number 1 > Number 2');
        if number1 = number2 then
            writeln('These numbers are the same.');
    end;

    Function one_for_minus(number1, number2, number3: integer): integer;
    Begin
        answer := (number1 - number2) * number3;
        writeln('The answer is: ', answer);
    end;

    Function a3_sub_b3(number1, number2: integer): integer;
    begin
        answer := number1*number1*number1 - number2*number2*number2;
        writeln('The answer is: ', answer);
    end;

    Function a3_add_b3(number1, number2: integer): integer;
    begin
        answer := number1*number1*number1 + number2*number2*number2;
        writeln('The answer is: ', answer);
    end;

    // ask the user for the numbers
    Function ask_2numbers(): integer;
    begin
       write('Type number 1 (a): '); TextColor(2); readln(number1);
       TextColor(White);
       write('Type number 2 (b): '); TextColor(2); readln(number2);
       TextColor(White);
    end;

    Function ask_3numbers(): integer;
    begin
        write('Type value for the first number (a): '); TextColor(2); readln(number1);
        TextColor(White);
        write('The second one (b): '); TextColor(2); readln(number2);
        TextColor(White);
        write('And for the third number (x): '); TextColor(2); readln(number3);
        TextColor(White);
    end;

    Function ask_2real():real;
    begin
        write('Type value for the first number (a): '); TextColor(2); readln(real1);
        TextColor(White);
        write('The second one (b): '); TextColor(2); readln(real2);
        TextColor(White);
    end;

    // new calculator functions
    Function total2_3exp(number1,number2:integer):integer;
    begin
        answer := (number1 + number2) * (number1 + number2) * (number1 + number2);
        writeln('The answer is: ', answer);
    end;

    Function minus2_3exp(number1,number2:integer):integer;
    begin
        answer := (number1 - number2) * (number1 - number2) * (number1 - number2);
        writeln('The answer is: ', answer);
    end; 
END.
