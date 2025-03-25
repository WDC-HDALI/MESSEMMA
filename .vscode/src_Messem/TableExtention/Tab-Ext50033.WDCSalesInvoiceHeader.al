namespace MessemMA.MessemMA;

using Microsoft.Sales.History;

tableextension 50033 "WDC SalesInvoiceHeader" extends "Sales Invoice Header"
{
    fields
    {
        field(50000; "Pallet Quantity"; Integer)
        {
            CaptionML = ENU = 'Pallet Quantity', FRA = 'Pallet';
            DataClassification = ToBeClassified;
        }
        field(50001; "Scelle No."; code[20])
        {
            CaptionML = ENU = 'Scelle No.', FRA = 'N° Scellé';
            DataClassification = ToBeClassified;
        }
        field(50002; "Container No."; code[20])
        {
            CaptionML = ENU = 'Container No.', FRA = 'N° conteneur/matricule';
            DataClassification = ToBeClassified;
        }
        field(50003; "Forwarding Agent"; code[20])
        {
            CaptionML = ENU = 'Forwarding Agent', FRA = 'Code transitaire';
            DataClassification = ToBeClassified;
            TableRelation = "WDC Forwarding Agent";
        }
        field(50004; "Destination Port"; code[20])
        {
            CaptionML = ENU = 'Destination Port', FRA = 'Port de destination';
            DataClassification = ToBeClassified;
            TableRelation = "WDC Forwarding Agent";
        }
        field(50005; "Notify Party 1"; code[20])
        {
            CaptionML = ENU = 'Notify Party 1', FRA = 'Partie à informer 1';
            DataClassification = ToBeClassified;
            TableRelation = "WDC Notify Party".Code WHERE(harbor = FIELD("Destination Port"));
        }
        field(50006; "Notify Party 2"; code[20])
        {
            CaptionML = ENU = 'Notify Party 2', FRA = 'Partie à informer 2';
            DataClassification = ToBeClassified;
            TableRelation = "WDC Notify Party".Code WHERE(harbor = FIELD("Destination Port"));
        }

    }
}
