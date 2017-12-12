codeunit 50100 TestCUExt
{
    TableNo = Customer;

    trigger OnRun();
    var
        HelloText: Codeunit TestMessages;
        MyTable: Record MyTable;
        EntryNoVar: Integer;
        Msg: Text;
    begin
        Msg := HelloText.GetRadnomNum;
        Message('%1, %2', Msg, Rec.Name);
        if MyTable.FindLast then begin
            EntryNoVar := MyTable."Entry No.";
        end else
            EntryNoVar := 0;
        MyTable.Init;
        MyTable."Entry No." := EntryNoVar + 1;
        MyTable.Description := Msg;
        MyTable.Insert(true);
        Message(Format(MyTable."Entry No."));
    end;


}