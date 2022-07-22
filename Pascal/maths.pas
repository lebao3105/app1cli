Unit maths;

Interface
var number1, number2, number3, answer: integer;
    real1, real2, real_answer: real;

function add(number1, number2: Integer): integer;
function minus(number1, number2: Integer): integer;
function multiple(number1, number2: Integer): integer;
function divide(real1, real2:real): real;
function compare(number1, number2:integer):integer;
function one_for_total(number1, number2, number3: integer): integer;
function one_for_minus(number1, number2, number3: integer): integer;
function ask_2real():real;
function ask_2numbers():integer;
function ask_3numbers():integer;
function a3_sub_b3(number1, number2:integer):integer;
function a3_add_b3(number1, number2: integer):integer;
function total2_3exp(number1,number2:integer):integer;
function minus2_3exp(number1,number2:integer):integer;

Implementation
uses crt, sysutils, resource;

    function add(number1, number2: Integer): integer;
    Begin
        answer := number1 + number2;
        writeln(Cal_Ans, answer);
    End;

    function minus(number1, number2: Integer): integer;
    Begin
        answer := number1 - number2;
        writeln(Cal_Ans, answer);
    End;

    function multiple(number1, number2: Integer): integer;
    Begin
        answer := number1 * number2;
        writeln(Cal_Ans, answer);
    End;

    function divide(real1, real2: real): real;
    Begin
        real_answer := real1 / real2;
        writeln(Cal_Ans, real_answer);
    End;

    function one_for_total(number1, number2, number3: integer): integer;
    Begin
        answer := (number1 + number2) * number3;
        writeln(Cal_Ans, answer);
    end;

    function compare(number1, number2:integer):integer;
    begin
        if number1 < number2 then
            writeln(Cpr_Smaller);
        if number1 > number2 then
            writeln(Cpr_Bigger);
        if number1 = number2 then
            writeln(Cpr_Both);
    end;

    function one_for_minus(number1, number2, number3: integer): integer;
    Begin
        answer := (number1 - number2) * number3;
        writeln(Cal_Ans, answer);
    end;

    function a3_sub_b3(number1, number2: integer): integer;
    begin
        answer := number1*number1*number1 - number2*number2*number2;
        writeln(Cal_Ans, answer);
    end;

    function a3_add_b3(number1, number2: integer): integer;
    begin
        answer := number1*number1*number1 + number2*number2*number2;
        writeln(Cal_Ans, answer);
    end;

    // ask the user for the numbers
    function ask_2numbers(): integer;
    begin
       write(Ask_num1); TextColor(2); readln(number1);
       TextColor(LightGray);
       write(Ask_num2); TextColor(2); readln(number2);
       TextColor(LightGray);
    end;

    function ask_3numbers(): integer;
    begin
        write(Ask_num1); TextColor(2); readln(number1);
        TextColor(LightGray);
        write(Ask_num2); TextColor(2); readln(number2);
        TextColor(LightGray);
        write(Ask_num3); TextColor(2); readln(number3);
        TextColor(LightGray);
    end;

    function ask_2real():real;
    begin
        write(Ask_num1); TextColor(2); readln(real1);
        TextColor(LightGray);
        write(Ask_num2); TextColor(2); readln(real2);
        TextColor(LightGray);
    end;

    // new calculator functions
    function total2_3exp(number1,number2:integer):integer;
    begin
        answer := (number1 + number2) * (number1 + number2) * (number1 + number2);
        writeln(Cal_Ans, answer);
    end;

    function minus2_3exp(number1,number2:integer):integer;
    begin
        answer := (number1 - number2) * (number1 - number2) * (number1 - number2);
        writeln(Cal_Ans, answer);
    end; 
END.
