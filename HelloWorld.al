// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 CustomerListExt extends "Customer List"
{
    layout
    {

    }
    actions
    {
        addlast("&Customer")
        {
            action("TEST")
            {
                RunObject = codeunit TestCUExt;
                RunPageOnRec = true;
                Image = CheckDuplicates;
                PromotedCategory = Category8;
                Promoted = true;
            }
        }
    }
    trigger OnOpenPage();
    begin
        //Message('Gde si komšo, gde si kralju!!!');
    end;

}