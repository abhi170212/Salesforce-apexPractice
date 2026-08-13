public without sharing class getNameFromEmail {
    // write a method to find the name of the person from email address 
    // provided
    // NOTE : All email addresses are in company formate:
    // firstname_lastname@compnayname.com
   public static String getNameFromEmailMethod(String emailAddress){
    String fullName='';
    if(emailAddress !=' '){
        String extractedString = emailAddress.substringBefore('@');
        List<String> splittedNames= extractedString.split('_');
        if(splittedNames.size()==2){
        fullName = splittedNames[0]+' '+splittedNames[1];
            }
    }
    
    return fullName;
   }
}