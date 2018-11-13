tableextension 50100 "CSD ResourceExt" extends Resource
{
    fields
    {
        // Add changes to table fields here
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                TestField("Unit Cost");

            end;
        }
        modify(Type)
        {
            OptionCaption = 'Instructor,Room';

        }
        field(50101; "CSD Resource Type"; Option)

        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
            DataClassification = ToBeClassified;
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximun Participants';
            DataClassification = ToBeClassified;

        }
        field(50103; "CSD Quantity per Day"; Decimal)
        {
            Caption = 'Quantity per Day';
            DataClassification = ToBeClassified;

        }

    }


}