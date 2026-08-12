public without sharing class acronymsClassTwo {
  
    public static String getFullFormOfAcronymsmethod(String acronymsToBeChecked){
        String fullForm='Not given inthe settings';
        List<Acronym_Master__c> acronmyList =[SELECT Full_Version__c FROM Acronym_Master__c WHERE Name=:acronymsToBeChecked];
        if(acronmyList.size() ==1){
            fullForm = acronmyList[0].Full_Version__c;
        }
        return fullForm;
    }
    
}