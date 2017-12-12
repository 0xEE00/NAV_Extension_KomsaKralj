table 50100 MyTable
{

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Editable = false;
        }
        field(2; Description; Text[50])
        {
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert();
    begin
        Message('MyTable - OnInsert');
    end;

    trigger OnModify();
    begin
        Message('MyTable - OnModify');
    end;

    trigger OnDelete();
    begin
        Message('MyTable - OnDelete');
    end;

    trigger OnRename();
    begin
    end;

}