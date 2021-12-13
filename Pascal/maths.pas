(* This unit is used for app1 (Pascal version).
   Created by Le Bao Nguyen. *)
Unit maths;

Interface
var
    number1, number2, number3, answer: integer;
    real1, real2, real_answer: real;

//something...
Function Add(number1, number2: Integer): integer;
Function Minus(number1, number2: Integer): integer;
Function Multiple(number1, number2: Integer): integer;
Function Divide(real1, real2:real): real;
Function compare(number1, number2:integer):integer;
Function one_for_total(number1, number2, number3: integer): integer;
Function one_for_minus(number1, number2, number3: integer): integer;
Function ask_2real():real;
Function ask_2numbers():integer;
Function ask_3numbers():integer;
Function a3_sub_b3(number1, number2, answer:integer):integer;
Function a3_add_b3(number1, number2, answer: integer):integer;
IMPLEMENTATION
uses crt, sysutils;
    Function Add(number1, number2: Integer): integer;
    Begin
        answer := number1 + number2;
        writeln('The answer is: ', answer);
    End;

    Function Minus(number1, number2: Integer): integer;
    Begin
        answer := number1 - number2;
        writeln('The answer is: ', answer);
    End;

    Function Multiple(number1, number2: Integer): integer;
    Begin
        answer := number1 * number2;
        writeln('The answer is: ', answer);
    End;

    Function Divide(real1, real2: real): real;
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
       if number1 < number2 then writeln('Number 1 < Number 2');
       if number1 > number2 then writeln('Number 1 > Number 2');
       if number1 = number2 then writeln('These numbers are the same.');
    end;

    Function one_for_minus(number1, number2, number3: integer): integer;
    Begin
        answer := (number1 - number2) * number3;
        writeln('The answer is: ', answer);
    end;
    Function a3_sub_b3(number1, number2, answer: integer): integer;
    begin
        answer := number1*number1*number1 - number2*number2*number2;
        writeln('The answer is: ', answer);
    end;
    Function a3_add_b3(number1, number2, answer: integer): integer;
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
END.
