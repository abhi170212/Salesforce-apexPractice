public  class voteEligibility {
   // write a method to check if a person can vote or not based on their age 

   public static Boolean checkVoteEligibility(Date dateOfBirt){
    // I have DOB
    // I have to make a difference from the today's date and then convert that into years. 
    // check the DOB

    Date todaysDate = System.today(); // returns the date of today 
    Integer daysInBetween = dateOfBirt.daysBetween(todaysDate);
    Integer approxAge = (daysInBetween /365);

    if(approxAge >=18){
        return true;
    }
    return false;

   }

    // anonymous window code-------------------------------------------------------------------- 
    /*
    
    String dateOfBirth = '2004-12-02';
    Date myBday = Date.valueOf(dateOfBirth);
    System.debug(voteEligibility.checkVoteEligibility(myBday));

    */
}