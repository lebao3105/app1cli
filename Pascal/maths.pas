Unit maths;
{$mode objfpc}{$H+}

Interface

uses fpjson, jsonparser;

var
    totalScore: integer = 100;
    humanName: string;
    blameSentence: TJSONArray;

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

uses crt, sysutils, resource, math, app1_utils;

var
    jsonData: TJSONObject;
    jsonFile: TextFile;
    readContent: string;
    line: string;
    rF, rS, uTO, bUTO, nRD: TJSONBoolean;
    hN: TJSONString;

procedure ask;
var booleanChoice: string;
begin
    // Settings
    if (not randomSecond) then begin
        write(Ask_random2);
        readln(booleanChoice);

        randomSecond := lowercase(booleanChoice) = 'y';
    end;

    if (not randomFirst) then begin
        write(Ask_random1);
        readln(booleanChoice);

        randomFirst := lowercase(booleanChoice) = 'y';
    end;

    if (not underTenOps) then begin
        write(Ask_number2Smaller);
        readln(booleanChoice);
        underTenOps := lowercase(booleanChoice) = 'y';
    end;

    if underTenOps then begin
        write(Ask_random1);
        readln(booleanChoice);

        bothUnderTenOps := lowercase(booleanChoice) = 'y';
    end;

    // Now pick numbers
    if randomSecond then begin
        repeat secondNumber := Random(ifthen(bothUnderTenOps or underTenOps, 9, 99));
        until (secondNumber <> 0) and (secondNumber <> 1);
    end

    else repeat begin
        write(Format(Ask_num2, [ humanName ]));
        readln(secondNumber);
    end until (secondNumber <> 0) and (secondNumber <> 1);

    if randomFirst then begin
        if noRemainsDivision then
            repeat firstNumber := Random(ifthen(bothUnderTenOps, 9, 99));
            until (firstNumber <> 0) and (firstNumber mod secondNumber = 0)
        else
            repeat firstNumber := Random(ifthen(bothUnderTenOps, 9, 99)); until firstNumber <> 0;
    end

    else repeat begin
        write(Format(Ask_num1, [ humanName ]));
        readln(firstNumber);
    end until (firstNumber <> 0) and (firstNumber <> 1);

    // Read the answer from the user
    writeln(Format(NumsSummary, [ firstNumber, secondNumber ]));
    write(Format(CalInput, [ humanName ]));
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
        textgreenln(IntToStr(res));

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
var i: Integer;
begin
    if blameSentence.Count > 0 then
        for i := 0 to blameSentence.Count - 1 do begin
            writeln(blameSentence.Strings[i]);
            writeln(blameSentence.Strings[i]);
            writeln(blameSentence.Strings[i]);
        end;
end;

Initialization

try
    AssignFile(jsonFile, 'settings.json');
    Reset(jsonFile);

    while not EOF(jsonFile) do
    begin
        readln(jsonFile, line);
        readContent := readContent + #13#10 + line;
    end;

    CloseFile(jsonFile);

    jsonData := GetJSON(readContent) as TJSONObject;

    if not jsonData.Find('name', hN) then
        humanName := '???'
    else
        humanName := hN.AsString;
    

    if not jsonData.Find('blame', blameSentence) then
        blameSentence := TJSONArray.Create;

    jsonData.Find('randomFirst', rF);
    jsonData.Find('randomSecond', rS);
    jsonData.Find('underTenOps', uTO);
    jsonData.Find('bothUnderTenOps', bUTO);
    jsonData.Find('noRemainsDivision', nRD);

    randomFirst := rF.AsBoolean;
    randomSecond := rS.AsBoolean;
    underTenOps := uTO.AsBoolean;
    bothUnderTenOps := bUTO.AsBoolean;

    jsonData.Free();

except
    on E: Exception do
        writeln('Error reading settings.json: ', E.Message);
end;

end.
