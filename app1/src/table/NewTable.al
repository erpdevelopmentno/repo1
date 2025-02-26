table 50100 "My New Table"
{
    DataClassification = CustomerContent;
    Caption = 'My New Table';

    fields
    {
        field(61000; "Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Code';
        }

        field(61001; Description; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }

        field(61002; Amount; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Amount';
        }

        field(61003; "Date Created"; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Date Created';
        }
    }

    trigger OnInsert()
    begin
        "Date Created" := CurrentDateTime;
    end;

    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}