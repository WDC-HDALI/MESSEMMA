tableextension 50907 "WDC-ED Vendor" extends Vendor
{
    fields
    {
        field(50860; "Payment in progress (LCY)"; Decimal)
        {
            CalcFormula = Sum("WDC-ED Payment Line"."Amount (LCY)" WHERE("Account Type" = CONST(Vendor),
                                                                   "Account No." = FIELD("No."),
                                                                   "Copied To Line" = CONST(0),
                                                                   "Payment in Progress" = CONST(true)));
            captionML = ENU = 'Payment in progress (LCY)', FRA = 'Règlement en cours DS';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50880; "Exclude from Payment Reporting"; Boolean)
        {
            captionML = ENU = 'Exclude from Payment Reporting', FRA = 'Exclure de l''état règlement';
            DataClassification = CustomerContent;
        }
    }

}