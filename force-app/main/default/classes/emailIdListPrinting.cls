public  class emailIdListPrinting {
    public emailIdListPrinting() {}
    // write a method that query all contacts associated to an account name and return 
    // a list of email Ids of all these contacts

    

public static List<String> returnContactEmail(String accountName){
    // first fetch the id of the account 
    // use the account id to find all the contacts associate with this account id 
    // loop through the contacts and find all the emails 
    // return the list of those emails 

    List<String> mailBox = new List<String>();
    List<Account> accVar = [SELECT id FROM Account WHERE Name=:accountName LIMIT 1];
    
    if(accVar.size() ==1){
        List<Contact> conVar = [SELECT id,Email FROM Contact WHERE AccountId =:accVar[0].id];
        
        if(conVar.size() > 0){
          for(Contact con:conVar){
            if(con.Email != null){
                 mailBox.add(con.Email);
            }
        }}
    }

    return mailBox;
}
}