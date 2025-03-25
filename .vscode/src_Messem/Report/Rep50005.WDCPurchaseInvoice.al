report 50005 "WDC Purchase Invoice"
{
    CaptionML = ENU = 'Purchase - Invoice', FRA = 'Facture Achat';
    DefaultLayout = RDLC;
    RDLCLayout = './.vscode/src_Messem/Report/RDLC/MESSEMPurchaseInvoice.rdlc';
    ApplicationArea = all;

    dataset
    {
        dataitem("Purch. Inv. Header"; "Purch. Inv. Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Buy-from Vendor No.", "No. Printed";
            RequestFilterHeading = 'Posted Purchase Invoice';
            column(No_PurchInvHeader; "No.")
            {
            }
            column(InvDiscAmtCaption; InvDiscAmtCaptionLbl)
            {
            }
            column(AllowInvDiscCaption; AllowInvDiscCaptionLbl)
            {
            }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(PaymentTermsDesc; PaymentTerms.Description)
                    {
                    }
                    column(ShipmentMethodDesc; ShipmentMethod.Description)
                    {
                    }
                    column(DocCaptionCopyText; STRSUBSTNO(DocumentCaption, CopyText))
                    {
                    }
                    column(VendAddr1; VendAddr[1])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(VendAddr2; VendAddr[2])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(VendAddr3; VendAddr[3])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(VendAddr4; VendAddr[4])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(VendAddr5; VendAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(VendAddr6; VendAddr[6])
                    {
                    }
                    column(CompanyInfoEMail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccountNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(PayToVendNo_PurchInvHeader; "Purch. Inv. Header"."Pay-to Vendor No.")
                    {
                    }
                    column(DocDate_PurchInvHeader; format("Purch. Inv. Header"."Document Date", 0, '<Day,2> <Month Text,3> <Year4>'))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNo_PurchInvHeader; "Purch. Inv. Header"."VAT Registration No.")
                    {
                    }
                    column(DueDate_PurchInvHeader; "Purch. Inv. Header"."Due Date")
                    {
                    }
                    column(PurchaserText; PurchaserText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(RefText; ReferenceText)
                    {
                    }
                    column(YourRef_PurchInvHeader; "Purch. Inv. Header"."Your Reference")
                    {
                    }
                    column(OrderNoText; OrderNoText)
                    {
                    }
                    column(OrderNo_PurchInvHeader; "Purch. Inv. Header"."Order No.")
                    {
                    }
                    column(VendAddr7; VendAddr[7])
                    {
                    }
                    column(VendAddr8; VendAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(PostingDate_PurchInvHeader; FORMAT("Purch. Inv. Header"."Posting Date"))
                    {
                    }
                    column(PricesIncVAT_PurchInvHeader; "Purch. Inv. Header"."Prices Including VAT")
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(ShowInternalInfo; ShowInternalInfo)
                    {
                    }
                    column(VATBaseDisc_PurchInvHeader; "Purch. Inv. Header"."VAT Base Discount %")
                    {
                    }
                    column(PricesInclVATtxt; PricesInclVATtxt)
                    {
                    }
                    column(BuyFromVendNo_PurchInvHeader; "Purch. Inv. Header"."Buy-from Vendor No.")
                    {
                    }
                    column(Farm_PurchInvHeader; "Purch. Inv. Header".Farm)
                    {
                    }
                    column(FarmCaptionLbl; FarmCaptionLbl)
                    {
                    }
                    column(HeureCreation; DT2TIME("Purch. Inv. Header".SystemCreatedAt))
                    {
                    }
                    column(PhoneNoCaption; PhoneNoCaptionLbl)
                    {
                    }
                    column(HomePageCaption; HomePageCaptionLbl)
                    {
                    }
                    column(EMailCaption; EMailCaptionLbl)
                    {
                    }
                    column(VATRegNoCaption; VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption; GiroNoCaptionLbl)
                    {
                    }
                    column(BankNameCaption; BankNameCaptionLbl)
                    {
                    }
                    column(BankAccNoCaption; BankAccNoCaptionLbl)
                    {
                    }
                    column(DueDateCaption; DueDateCaptionLbl)
                    {
                    }
                    column(InvoiceNoCaption; InvoiceNoCaptionLbl)
                    {
                    }
                    column(PostingDateCaption; PostingDateCaptionLbl)
                    {
                    }
                    column(PageCaption; PageCaptionLbl)
                    {
                    }
                    column(PaymentTermsCaption; PaymentTermsCaptionLbl)
                    {
                    }
                    column(ShipmentMethodCaption; ShipmentMethodCaptionLbl)
                    {
                    }
                    column(DocDateCaption; DocDateCaptionLbl)
                    {
                    }
                    column(PayToVendNo_PurchInvHeaderCaption; "Purch. Inv. Header".FIELDCAPTION("Pay-to Vendor No."))
                    {
                    }
                    column(PricesIncVAT_PurchInvHeaderCaption; "Purch. Inv. Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(BuyFromVendNo_PurchInvHeaderCaption; "Purch. Inv. Header".FIELDCAPTION("Buy-from Vendor No."))
                    {
                    }
                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "Purch. Inv. Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(DimText_DimensionLoop1; DimText)
                        {
                        }
                        column(HeaderDimensionsCaption; HeaderDimensionsCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT DimSetEntry1.FINDSET THEN
                                    CurrReport.BREAK;
                            END ELSE
                                IF NOT Continue THEN
                                    CurrReport.BREAK;

                            CLEAR(DimText);
                            // Continue := FALSE;
                            REPEAT
                                OldDimText := DimText;
                                IF DimText = '' THEN
                                    DimText := STRSUBSTNO('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    // Continue := TRUE;
                                    EXIT;
                                END;
                            UNTIL DimSetEntry1.NEXT = 0;
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF NOT ShowInternalInfo THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem("Purch. Inv. Line"; "Purch. Inv. Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Purch. Inv. Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(LineAmt_PurchInvLine; "Line Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Desc_PurchInvLine; Description)
                        {
                        }
                        column(No_PurchInvLine; "No.")
                        {
                        }
                        column(Qty_PurchInvLine; Quantity)
                        {
                        }
                        column(UOM_PurchInvLine; "Unit of Measure")
                        {
                        }
                        column(DirectUnitCost_PurchInvLine; "Direct Unit Cost")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 2;
                        }
                        column(LineDisc_PurchInvLine; "Line Discount %")
                        {
                        }
                        column(AllowInvDisc_PurchInvLine; "Allow Invoice Disc.")
                        {
                            IncludeCaption = false;
                        }
                        column(VATIdentifier_PurchInvLine; "VAT Identifier")
                        {
                        }
                        column(LineNo_PurchInvLine; "Line No.")
                        {
                        }
                        column(AllowVATDisctxt; AllowVATDisctxt)
                        {
                        }
                        column(PurchInLineTypeNo; PurchInLineTypeNo)
                        {
                        }
                        column(VATAmtText; VATAmountText)
                        {
                        }
                        column(NegInvDiscAmt_PurchInvLine; -"Inv. Discount Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalText; TotalText)
                        {
                        }
                        column(PurchInvLineAmt; Amount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(AmtIncVAT_PurchInvLine; "Amount Including VAT")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AmtIncVATAmt_PurchInvLine; "Amount Including VAT" - Amount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText; VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalExclVATText; TotalExclVATText)
                        {
                        }
                        column(NegLineAmtInvDiscAmtAmtIncVAT_PurchInvLine; -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT"))
                        {
                            AutoFormatExpression = "Purch. Inv. Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalSubTotal; TotalSubTotal)
                        {
                            AutoFormatExpression = "Purch. Inv. Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvDiscAmt; TotalInvoiceDiscountAmount)
                        {
                            AutoFormatExpression = "Purch. Inv. Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmt; TotalAmount)
                        {
                            AutoFormatExpression = "Purch. Inv. Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmtInclVAT; TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Purch. Inv. Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmtVAT; TotalAmountVAT)
                        {
                            AutoFormatExpression = "Purch. Inv. Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalPaymentDiscOnVAT; TotalPaymentDiscountOnVAT)
                        {
                            AutoFormatType = 1;
                        }
                        column(LotNo; LotNo)
                        {
                        }
                        column(DirectUnitCostCaption; DirectUnitCostCaptionLbl)
                        {
                        }
                        column(DiscountPctCaption; DiscountPctCaptionLbl)
                        {
                        }
                        column(AmountCaption; AmountCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(PymtDiscOnVATCaption; PymtDiscOnVATCaptionLbl)
                        {
                        }
                        column(Desc_PurchInvLineCaption; FIELDCAPTION(Description))
                        {
                        }
                        column(No_PurchInvLineCaption; FIELDCAPTION("No."))
                        {
                        }
                        column(Qty_PurchInvLineCaption; FIELDCAPTION(Quantity))
                        {
                        }
                        column(UOM_PurchInvLineCaption; FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(VATIdentifier_PurchInvLineCaption; FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimText_DimensionLoop2; DimText)
                            {
                            }
                            column(LineDimensionsCaption; LineDimensionsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT DimSetEntry2.FINDSET THEN
                                        CurrReport.BREAK;
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                // Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText := STRSUBSTNO('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        // Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL DimSetEntry2.NEXT = 0;
                            end;

                            trigger OnPreDataItem()
                            begin
                                IF NOT ShowInternalInfo THEN
                                    CurrReport.BREAK;

                                DimSetEntry2.SETRANGE("Dimension Set ID", "Purch. Inv. Line"."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord()
                        var
                            ItemLedgerEntry: Record 32;
                        begin
                            IF (Type = Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                                "No." := '';

                            VATAmountLine.INIT;
                            VATAmountLine."VAT Identifier" := "VAT Identifier";
                            VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                            VATAmountLine."Tax Group Code" := "Tax Group Code";
                            VATAmountLine."Use Tax" := "Use Tax";
                            VATAmountLine."VAT %" := "VAT %";
                            VATAmountLine."VAT Base" := Amount;
                            VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                            VATAmountLine."Line Amount" := "Line Amount";
                            IF "Allow Invoice Disc." THEN
                                VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                            VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                            VATAmountLine.InsertLine;

                            AllowVATDisctxt := FORMAT("Allow Invoice Disc.");
                            PurchInLineTypeNo := Type.AsInteger();

                            TotalSubTotal += "Line Amount";
                            TotalInvoiceDiscountAmount -= "Inv. Discount Amount";
                            TotalAmount += Amount;
                            TotalAmountVAT += "Amount Including VAT" - Amount;
                            TotalAmountInclVAT += "Amount Including VAT";
                            TotalPaymentDiscountOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");

                            LotNo := '';
                            ItemLedgerEntry.RESET;
                            ItemLedgerEntry.SETCURRENTKEY("Document No.", "Document Type", "Document Line No.");
                            ItemLedgerEntry.SETRANGE("Entry Type", ItemLedgerEntry."Entry Type"::Purchase);
                            ItemLedgerEntry.SETRANGE("Document Type", ItemLedgerEntry."Document Type"::"Purchase Receipt");
                            ItemLedgerEntry.SETRANGE("Document No.", "Purch. Inv. Line"."Receipt No.");
                            ItemLedgerEntry.SETRANGE("Document Line No.", "Purch. Inv. Line"."Receipt Line No.");
                            IF ItemLedgerEntry.FINDFIRST THEN BEGIN
                                LotNo := ItemLedgerEntry."Lot No.";
                            END;
                        end;

                        trigger OnPreDataItem()
                        var
                            PurchInvLine: Record 123;
                            VATIdentifier: Code[10];
                        begin
                            VATAmountLine.DELETEALL;
                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) AND (Amount = 0) DO
                                MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            SETRANGE("Line No.", 0, "Line No.");
                            // CurrReport.CREATETOTALS("Line Amount", "Inv. Discount Amount", Amount, "Amount Including VAT");

                            PurchInvLine.SETRANGE("Document No.", "Purch. Inv. Header"."No.");
                            PurchInvLine.SETFILTER(Type, '<>%1', 0);
                            VATAmountText := '';
                            IF PurchInvLine.FIND('-') THEN BEGIN
                                VATAmountText := STRSUBSTNO(Text011, PurchInvLine."VAT %");
                                VATIdentifier := PurchInvLine."VAT Identifier";
                                REPEAT
                                    IF (PurchInvLine."VAT Identifier" <> VATIdentifier) AND (PurchInvLine.Quantity <> 0) THEN
                                        VATAmountText := Text012;
                                UNTIL PurchInvLine.NEXT = 0;
                            END;
                        end;
                    }
                    dataitem(VATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmtLineVATBase; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Purch. Inv. Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmt; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Purch. Inv. Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmt; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Purch. Inv. Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Purch. Inv. Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Purch. Inv. Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVAT_VATCounter; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier_VATCounter; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATPercentageCaption; VATPercentageCaptionLbl)
                        {
                        }
                        column(VATBaseCaption; VATBaseCaptionLbl)
                        {
                        }
                        column(VATAmtCaption; VATAmtCaptionLbl)
                        {
                        }
                        column(VATAmtSpecificationCaption; VATAmtSpecificationCaptionLbl)
                        {
                        }
                        column(InvDiscBaseAmtCaption; InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(LineAmtCaption; LineAmtCaptionLbl)
                        {
                        }
                        column(VATIdentifierCaption; VATIdentifierCaptionLbl)
                        {
                        }
                        column(TotalCaption; TotalCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            //CurrReport.CREATETOTALS(VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                            // VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Base", VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VATCounterLCY; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALVATAmtLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVAT_VATCounterLCY; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier_VATCounterLCY; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);

                            VALVATBaseLCY := ROUND(VATAmountLine."VAT Base" / "Purch. Inv. Header"."Currency Factor");
                            VALVATAmountLCY := ROUND(VATAmountLine."VAT Amount" / "Purch. Inv. Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Purch. Inv. Header"."Currency Code" = '')
                            THEN
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            //CurrReport.CREATETOTALS(VALVATBaseLCY, VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                                VALSpecLCYHeader := Text007 + Text008
                            ELSE
                                VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Purch. Inv. Header"."Posting Date", "Purch. Inv. Header"."Currency Code", 1);
                            CalculatedExchRate := ROUND(1 / "Purch. Inv. Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount", 0.000001);
                            VALExchRate := STRSUBSTNO(Text009, CalculatedExchRate, CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));

                        trigger OnPreDataItem()
                        begin
                            IF "Purch. Inv. Header"."Buy-from Vendor No." = "Purch. Inv. Header"."Pay-to Vendor No." THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem(Total3; integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(ShipToAddr1; ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2; ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3; ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4; ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5; ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6; ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7; ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8; ShipToAddr[8])
                        {
                        }
                        column(ShipToAddressCaption; ShipToAddressCaptionLbl)
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            IF ShipToAddr[1] = '' THEN
                                CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    IF Number > 1 THEN BEGIN
                        OutputNo := OutputNo + 1;
                        CopyText := Text003;
                    END;
                    // CurrReport.PAGENO := 1;

                    TotalSubTotal := 0;
                    TotalInvoiceDiscountAmount := 0;
                    TotalAmount := 0;
                    TotalAmountVAT := 0;
                    TotalAmountInclVAT := 0;
                    TotalPaymentDiscountOnVAT := 0;
                end;

                trigger OnPostDataItem()
                begin
                    IF NOT CurrReport.PREVIEW THEN
                        PurchInvCountPrinted.RUN("Purch. Inv. Header");
                end;

                trigger OnPreDataItem()
                begin
                    OutputNo := 1;
                    NoOfLoops := ABS(NoOfCopies);
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                CurrReport.LANGUAGE := Languagerec.GetLanguageID("Language Code");

                CompanyInfo.GET;

                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE
                    FormatAddr.Company(CompanyAddr, CompanyInfo);

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                IF "Order No." = '' THEN
                    OrderNoText := ''
                ELSE
                    OrderNoText := FIELDCAPTION("Order No.");
                IF "Purchaser Code" = '' THEN BEGIN
                    CLEAR(SalesPurchPerson);
                    PurchaserText := '';
                END ELSE BEGIN
                    SalesPurchPerson.GET("Purchaser Code");
                    PurchaserText := Text000
                END;
                IF "Your Reference" = '' THEN
                    ReferenceText := ''
                ELSE
                    ReferenceText := FIELDCAPTION("Your Reference");
                IF "VAT Registration No." = '' THEN
                    VATNoText := ''
                ELSE
                    VATNoText := FIELDCAPTION("VAT Registration No.");
                IF "Currency Code" = '' THEN BEGIN
                    GLSetup.TESTFIELD("LCY Code");
                    TotalText := STRSUBSTNO(Text001, GLSetup."LCY Code");
                    TotalInclVATText := STRSUBSTNO(Text002, GLSetup."LCY Code");
                    TotalExclVATText := STRSUBSTNO(Text006, GLSetup."LCY Code");
                END ELSE BEGIN
                    TotalText := STRSUBSTNO(Text001, "Currency Code");
                    TotalInclVATText := STRSUBSTNO(Text002, "Currency Code");
                    TotalExclVATText := STRSUBSTNO(Text006, "Currency Code");
                END;
                FormatAddr.PurchInvPayTo(VendAddr, "Purch. Inv. Header");
                IF "Payment Terms Code" = '' THEN
                    PaymentTerms.INIT
                ELSE BEGIN
                    PaymentTerms.GET("Payment Terms Code");
                    PaymentTerms.TranslateDescription(PaymentTerms, "Language Code");
                END;
                IF "Shipment Method Code" = '' THEN
                    ShipmentMethod.INIT
                ELSE BEGIN
                    ShipmentMethod.GET("Shipment Method Code");
                    ShipmentMethod.TranslateDescription(ShipmentMethod, "Language Code");
                END;

                FormatAddr.PurchInvShipTo(ShipToAddr, "Purch. Inv. Header");

                IF LogInteraction THEN
                    IF NOT CurrReport.PREVIEW THEN
                        SegManagement.LogDocument(
                          14, "No.", 0, 0, DATABASE::Vendor, "Buy-from Vendor No.", "Purchaser Code", '', "Posting Description", '');
                PricesInclVATtxt := FORMAT("Prices Including VAT");
            end;

            trigger OnPreDataItem()
            begin
                CompanyInfo1.GET;
                CompanyInfo1.CALCFIELDS(Picture);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        CaptionML = ENU = 'No. of Copies', FRA = 'Nombre de copies', NLD = 'Aantal exemplaren';
                        ApplicationArea = all;

                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        CaptionML = ENU = 'Show Internal Information', FRA = 'Afficher info. internes', NLD = 'Interne informatie weergeven';
                        ApplicationArea = all;
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        CaptionML = ENU = 'Log Interaction', FRA = 'Journal interaction', NLD = 'Interactie registreren';
                        ApplicationArea = all;
                        Enabled = LogInteractionEnable;
                    }
                }
            }
        }

        trigger OnInit()
        begin
            LogInteractionEnable := TRUE;
            NoOfCopies := 2;
        end;

        trigger OnOpenPage()
        begin
            LogInteraction := SegManagement.FindInteractionTemplateCode("Interaction Log Entry Document Type".FromInteger(14)) <> '';
            LogInteractionEnable := LogInteraction;
        end;
    }

    trigger OnInitReport()
    begin
        GLSetup.GET;
    end;

    var
        Text000: TextConst ENU = 'Purchaser', FRA = 'Acheteur';
        Text001: TextConst ENU = 'Total %1', FRA = 'Total %1';
        Text002: TextConst ENU = 'Total %1 Incl. VAT', FRA = 'Total %1 TTC';
        Text003: TextConst ENU = ' COPY', FRA = ' COPIE';
        Text004: TextConst ENU = 'Purchase - Invoice%1', FRA = 'Achats : Facture%1';
        Text006: TextConst ENU = 'Total %1 Excl. VAT', FRA = 'Total %1 HT';
        GLSetup: Record "General Ledger Setup";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        VATAmountLine: Record "VAT Amount Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        Languagerec: Record "Language";
        CurrExchRate: Record "Currency Exchange Rate";
        PurchInvCountPrinted: Codeunit "Purch. Inv.-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit SegManagement;
        VendAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        PurchaserText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        OrderNoText: Text[80];
        TotalText: Text[50];
        TotalInclVATText: Text[50];
        TotalExclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[10];
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        Text007: TextConst ENU = 'VAT Amount Specification in ', FRA = 'Détail TVA dans ';
        Text008: TextConst ENU = 'Local Currency', FRA = 'Devise société';
        Text009: TextConst ENU = 'Exchange rate: %1/%2', FRA = 'Taux de change : %1/%2';
        CalculatedExchRate: Decimal;
        Text010: TextConst ENU = 'Purchase - Prepayment Invoice %1', FRA = 'Achats - Facture acompte %1';
        OutputNo: Integer;
        PricesInclVATtxt: Text[30];
        AllowVATDisctxt: Text[30];
        VATAmountText: Text[30];
        Text011: TextConst ENU = '%1% VAT', FRA = 'TVA %1%';
        Text012: TextConst ENU = 'VAT Amount', FRA = 'Montant TVA';
        PurchInLineTypeNo: Integer;
        LogInteractionEnable: Boolean;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvoiceDiscountAmount: Decimal;
        TotalPaymentDiscountOnVAT: Decimal;
        FarmCaptionLbl: TextConst ENU = 'Farm', FRA = 'Ferme';
        CreatedHourCaptionLbl: TextConst ENU = 'Created Hour', FRA = 'Heure de création';
        PhoneNoCaptionLbl: TextConst ENU = 'Phone No.', FRA = 'N° téléphone';
        HomePageCaptionLbl: TextConst ENU = 'Home Page', FRA = 'Page d''accueil';
        EMailCaptionLbl: TextConst ENU = 'E-Mail', FRA = 'E-mail';
        VATRegNoCaptionLbl: TextConst ENU = 'VAT Registration No.', FRA = 'N° identif. intracomm.';
        GiroNoCaptionLbl: TextConst ENU = 'Giro No.', FRA = 'N° CCP';
        BankNameCaptionLbl: TextConst ENU = 'Bank', FRA = 'Banque';
        BankAccNoCaptionLbl: TextConst ENU = 'Account No.', FRA = 'N° compte';
        DueDateCaptionLbl: TextConst ENU = 'Due Date', FRA = 'Date d''échéance';
        InvoiceNoCaptionLbl: TextConst ENU = 'Invoice No.', FRA = 'N° facture';
        PostingDateCaptionLbl: TextConst ENU = 'Posting Date', FRA = 'Date comptabilisation';
        PageCaptionLbl: TextConst ENU = 'Page', FRA = 'Page';
        PaymentTermsCaptionLbl: TextConst ENU = 'Payment Terms', FRA = 'Conditions de paiement';
        ShipmentMethodCaptionLbl: TextConst ENU = 'Shipment Method', FRA = 'Conditions de livraison';
        DocDateCaptionLbl: TextConst ENU = 'Document Date', FRA = 'Date document';
        HeaderDimensionsCaptionLbl: TextConst ENU = 'Header Dimensions', FRA = 'Analytique en-tête';
        DirectUnitCostCaptionLbl: TextConst ENU = 'Direct Unit Cost', FRA = 'Prix unitaire direct';
        DiscountPctCaptionLbl: TextConst ENU = 'Different %', FRA = '% Ecart';
        AmountCaptionLbl: TextConst ENU = 'Amount', FRA = 'Montant';
        SubtotalCaptionLbl: TextConst ENU = 'Subtotal', FRA = 'Sous-total';
        PymtDiscOnVATCaptionLbl: TextConst ENU = 'Payment Discount on VAT', FRA = 'Escompte sur TVA';
        LineDimensionsCaptionLbl: TextConst ENU = 'Line Dimensions', FRA = 'Analytique ligne';
        VATPercentageCaptionLbl: TextConst ENU = 'VAT %', FRA = '% TVA';
        VATBaseCaptionLbl: TextConst ENU = 'VAT Base', FRA = 'Base TVA';
        VATAmtCaptionLbl: TextConst ENU = 'VAT Amount', FRA = 'Montant TVA';
        VATAmtSpecificationCaptionLbl: TextConst ENU = 'VAT Amount Specification', FRA = 'Détail montant TVA';
        InvDiscBaseAmtCaptionLbl: TextConst ENU = 'Inv. Diff. Base Amount', FRA = 'Montant base écart facture';
        LineAmtCaptionLbl: TextConst ENU = 'Line Amount', FRA = 'Montant ligne';
        VATIdentifierCaptionLbl: TextConst ENU = 'VAT Identifier', FRA = 'Identifiant TVA';
        TotalCaptionLbl: TextConst ENU = 'Total', FRA = 'Total';
        ShipToAddressCaptionLbl: TextConst ENU = 'Ship-to Address', FRA = 'Adresse destinataire';
        InvDiscAmtCaptionLbl: TextConst ENU = 'Invoice Different Amount', FRA = 'Montant écart facture';
        AllowInvDiscCaptionLbl: TextConst ENU = 'Allow Invoice Ecart', FRA = 'Autoriser écart facture';
        TrackingSpecif: Record "Tracking Specification";
        LotNo: Code[20];

    local procedure DocumentCaption(): Text[250]
    begin
        IF "Purch. Inv. Header"."Prepayment Invoice" THEN
            EXIT(Text010);
        EXIT(Text004);
    end;

    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean)
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
    end;
}

