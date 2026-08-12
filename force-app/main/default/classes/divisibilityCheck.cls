public without  sharing class divisibilityCheck {
    // write a method that check if a number is divided by 7 and 11 both 

    public static Boolean checkDivisibility(Integer numberToCheck){
        Boolean answer = false;

        Boolean isDivisbleBySeven = math.mod(numberToCheck,7) ==0 ? true:false;
        Boolean isDivisbleByEleven = math.mod(numberToCheck,11)==0 ? true:false;

        if(isDivisbleByEleven && isDivisbleBySeven){
            answer=true;
        }
        return answer;
    }
}