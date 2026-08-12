public without sharing class identifyPlantPartTwo {
   /**
    * 
    our main focus will be retrieve that plant whose name is to be chekced
    Then we will check the size of the list and it is one 
    then we will show the plant_type__C to the given plant ;
    */
   //------------------------------------------------------------------------------------------------------------------------------------------------------------
    public static String checkPlantTypeMethod(String plantToBechecked){
        String plantType = 'Not specified in the meta data';
        List<Plant_Information__mdt> singlePlantInformation=[SELECT Plant_Type__c FROM Plant_Information__mdt WHERE 	MasterLabel =:plantToBechecked LIMIT 1];
        if(singlePlantInformation.size() == 1){
            plantType= singlePlantInformation[0].Plant_Type__c;
        }
        return plantType;
    }
    //--------------------------------------------------------------------------------------------------------------------------------------------------------------
}