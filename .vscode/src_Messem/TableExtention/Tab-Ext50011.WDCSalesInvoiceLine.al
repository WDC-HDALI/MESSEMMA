tableextension 50011 "WDC Sales Invoice Line " extends "Sales Invoice Line"
{
    fields
    {
        field(50000; "Shipment Unit"; Code[20])
        {
            CaptionML = ENU = 'Shipment Unit', FRA = 'Unité d''expédition';
            DataClassification = ToBeClassified;
        }
        field(50003; "Shipment Container"; Code[20])
        {
            CaptionML = ENU = 'Shipment Container', FRA = 'Support logistique';
            DataClassification = ToBeClassified;
        }

        field(50008; "Quantity Shipment Units"; Decimal)
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Quantity Shipment Units', FRA = 'Nombre d''unités d''expédition';
            DecimalPlaces = 0 : 0;
        }

        field(50009; "Quantity Shipment Containers"; Decimal)
        {
            CaptionML = ENU = 'Qté de support logistique', FRA = 'Quantity Shipment Containers';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 0;
        }
        field(50010; "Packaging Item"; Boolean)
        {
            CaptionML = ENU = 'Packaging Item', FRA = 'Article d''emballage';
            DataClassification = ToBeClassified;

        }
        // field(50011; "Unit Price per Sales Price UOM"; Decimal)
        // {
        //     CaptionML = ENU = 'Unit Price per Sales Price UOM', FRA = 'Prix unitaire par unité prix de vente';
        //     DataClassification = ToBeClassified;

        // }
        field(50030; "Harmonised Tariff Code"; code[20])
        {
            CaptionML = ENU = 'Harmonised Tariff Code', FRA = 'Code tarifaire harmonisé';
            DataClassification = ToBeClassified;

        }


    }
}
