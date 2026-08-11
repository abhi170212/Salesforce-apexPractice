public class calculateSimpleInterest {
public static Decimal  calculateSI(Integer p,Integer rate , Integer t){
    try{
        Decimal sI;
        sI = (  (p*rate*t) / 100);
        return sI;
    }catch(Exception e){
        system.debug(e.getMessage());
        system.debug(e.getTypeName());
        system.debug(e.getLineNumber());
        return 0;
    }
}
}