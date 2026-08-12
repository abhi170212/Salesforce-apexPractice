public  class identifyPlant {
   // write a method to identigy if a plant is an indoor or an outdoor plant 
   //NOTE:- this will teach you the custom metadata in salesforce 
    // How to create a custom meta data ? 

    /**
     * New custom metadata from the Meta data in the home quick finder; 
     * give label , plural label and object name into that 
     * and put visibility to all apex and api codes 
     * create a custom field with value as picklist and two values as indoor and outdoor 
     * click on manage plant information and then click on new 
     * then you ahve plant label ( same as master label) and plant  information name ( as api and must be unique all the time) and select as outdoor or indoor 
     * 
     * 
     * 
     */
   public static String checkPlantType(String plantNameToBeChecked){

    // ftch the data of the plants from the metadata 
    // Iterate over the pkants data and then see if plantNameToBechecked is present or not 
    // if found , retrieve the plant_type__c for the particular plant mentioned over here. 
    string isPlantOutdoorOrIndoor = 'Not specified in Meta Data';
    List<Plant_Information__mdt> plantMetaData = [SELECT Id,MasterLabel,Plant_Type__c FROM Plant_Information__mdt];
    for(Plant_Information__mdt eachPlant: plantMetaData){
        if(eachPlant.MasterLabel == plantNameToBeChecked){
            isPlantOutdoorOrIndoor = eachPlant.Plant_Type__c;
        }
    }

return isPlantOutdoorOrIndoor;
   }

}