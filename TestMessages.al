codeunit 50101 TestMessages
{
    local procedure GetRanodomMsg(MsgNo: Integer): Text;
    begin
        case MsgNo of
            1 : exit('Zdravo');
            2 : exit('Hello');
        else
            exit('Здраво');
        end;
    end;
    procedure GetRadnomNum():Text;
    begin
        Randomize;
        exit(GetRanodomMsg(Random(3)));
    end;
}