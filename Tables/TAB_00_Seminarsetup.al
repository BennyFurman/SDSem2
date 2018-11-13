table 50100 "CSD Seminar Setup"
{
    DataClassification = ToBeClassified;
    Caption = 'Seminar Setup';


    fields
    {
        field(10; "Primary Key"; code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Primary Key';

        }
        field(20; "Seminar Nos."; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Seminar Nos.';
            TableRelation = "No. Series";

        }
        field(30; "Seminar Registration Nos."; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Seminar Registration Nos.';
            TableRelation = "No. Series";

        }
        field(40; "Posted Seminar Reg. Nos."; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Posted Seminar Nos.';
            TableRelation = "No. Series";

        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

}