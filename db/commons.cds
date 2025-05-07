namespace dev.common;
using { Currency } from '@sap/cds/common';


type Gender : String(1) enum{
    male = 'M';
    female = 'F';
    undisclosed = 'U';
};

type AmountT : Decimal(10,2)@(
    Semantics.amount.currencyCode: 'CURRENCY_CODE',
    sap.unit:'CURRENCY_CODE'
);

aspect Amount: {
    CURRENCY: Currency @(title : '{i18n>XCEL_CURR}');
    GROSS_AMOUNT: AmountT @(title : '{i18n>XCEL_GROSS}');
    NET_AMOUNT: AmountT @(title : '{i18n>XCEL_NET}');
    TAX_AMOUNT: AmountT @(title : '{i18n>XCEL_TAX}');
}



type Guid: String(32);
type PhoneNumber: String(30) @assert.format : '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
type Email: String(255) @assert.format : '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';