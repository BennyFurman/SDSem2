pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
//CSD1.00 - 2018-11-12 D. E. Veloper 
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Quantity per Day"; "CSD Quantity per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                field("CSD Maximun Participants"; "CSD Maximum Participants")
                {

                }

            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnAfterGetRecord()
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);

    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}