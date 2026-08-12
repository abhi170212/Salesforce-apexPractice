public without  sharing class splitTheBill {
    // write a method that allow you to split the bill amongst your friends 
    public static Decimal splitTheBillMethod(Decimal bill,Integer people){
        Decimal amountToBeShared = 0;
        if(bill !=0 && people !=0){
            amountToBeShared = bill / people ; 
        }
        return amountToBeShared;
    }
}