public without sharing class acronymsClass {
    // this one will teach you metadata as well as custom settings 

    public static String checkFullFormOfAcronymsMethod(String acronymsToBeChecked){
        // store the master data of all the acronyms 
        // fetch the data and see if it is available for the acronymsToBeChecked
        // if it does, then return the full form  
        String fullForm='Not given in the custom settings';
        List<Acronym_Master__c> acronymList = [SELECT Name,Full_Version__c FROM Acronym_Master__c];
        if(!acronymList.isEmpty()){
            for(Acronym_Master__c acr:acronymList){
                if(acr.Name == acronymsToBeChecked){
                    fullForm = acr.Full_Version__c;
                }
            }
        }
        return fullForm;
    }
}