Unit maths;
{$mode objfpc}

Interface

var
    totalScore: integer = 100;

    randomFirst: boolean;
    randomSecond: boolean;

    underTenOps: boolean;
    bothUnderTenOps: boolean;

    noRemainsDivision: boolean;

    firstNumber, secondNumber, humanInput: integer;

procedure ask;
procedure doTheTask(divide: boolean);
procedure blame;

Implementation

uses crt, sysutils, resource;

procedure ask;
var booleanChoice: string;
begin
    // Settings
    write(Ask_random2);
    readln(booleanChoice);

    randomSecond := lowercase(booleanChoice) = 'y';

    write(Ask_random1);
    readln(booleanChoice);

    randomFirst := lowercase(booleanChoice) = 'y';

    write(Ask_number2Smaller);
    readln(booleanChoice);
    underTenOps := lowercase(booleanChoice) = 'y';

    if underTenOps then begin
        write(Ask_random1);
        readln(booleanChoice);

        bothUnderTenOps := lowercase(booleanChoice) = 'y';
    end;

    // Now pick numbers
    if randomSecond then begin
        if bothUnderTenOps or underTenOps then
            repeat secondNumber := Random(9); until (secondNumber <> 0) and (secondNumber <> 1)
        else
            repeat secondNumber := Random(99); until (secondNumber <> 0) and (secondNumber <> 1);
    end

    else repeat begin
        write(Ask_num2);
        readln(secondNumber);
    end until (secondNumber <> 0) and (secondNumber <> 1);

    if randomFirst then begin
        if bothUnderTenOps then
            repeat firstNumber := Random(9); until firstNumber <> 0
        else
            repeat firstNumber := Random(99); until firstNumber <> 0;
    end

    else repeat begin
        write(Ask_num1);
        readln(firstNumber);
    end until (firstNumber <> 0) and (firstNumber <> 1);

    // Read the answer from the user
    writeln(Format(NumsSummary, [ firstNumber, secondNumber ]));
    write(CalInput);
    readln(humanInput);
end;

procedure doTheTask(divide: boolean);
var
    res: integer;
    lostPoints: integer;

begin
    if divide then begin
        res := firstNumber div secondNumber;
        
        if noRemainsDivision and (firstNumber mod secondNumber > 0) then
            raise Exception.Create(Format(DivRemains, [ firstNumber, secondNumber ]));
    end
    else res := firstNumber * secondNumber;

    if res <> humanInput then
    begin
        writeln(Wrong_Answer);
        repeat lostPoints := Random(10); until (totalScore > lostPoints) and (lostPoints > 0);
        totalScore := totalScore - lostPoints;
        writeln(Format(Points_Lost, [ lostPoints ]));
        writeln(Format(Points_Remaining, [ totalScore ]));
    end

    else begin
        writeln();
        if totalScore < 100 then begin
            totalScore := totalScore + 5;
            writeln(Format(Points_Gained + ' ' + Points_Remaining, [ totalScore ]));
        end
        else
            writeln(Points_Same);
    end;
end;

procedure blame;
begin
    writeln('Go learn how to multiply and divide, kid!');
    writeln('Are you kind of brainrotten? Think about it! Cry about it!');
    writeln('These questions are so simple, but why you put the score a zero?');
end;

end.
