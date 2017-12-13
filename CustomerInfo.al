page 50100 CustomerInfo
{
    PageType = List;
    SourceTable = MyTable;
    //Editable=false;

    layout
    {
        area(content)
        {

            group("Komsa kralj")
            {
                repeater(Ripiter)
                {
                    field("Entry No."; "Entry No.")
                    {

                    }
                    field(Description; Description)
                    {

                    }
                }
            }


        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }

    var
        myInt: Integer;
}