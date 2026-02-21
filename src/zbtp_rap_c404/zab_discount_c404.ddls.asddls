@EndUserText.label: 'Discount'
define abstract entity zab_discount_c404
{
    @EndUserText.label: 'Discount %'
    discount_percent : /DMO/BT_DiscountPercentage;
    
    comments : abap.char(100);
    
}
