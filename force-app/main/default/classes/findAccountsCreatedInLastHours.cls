public with sharing class findAccountsCreatedInLastHours {
    // Find the last 10 account & contact records created in the last 24 hours . 
    public static List<Object> displayAccountAndRecord()
    {
        List<Object> objectCollection = new List<Object>();
        List<Contact> conList =[SELECT Id FROM CONTACT WHERE CreatedDate=TODAY ORDER BY CreatedDate DESC LIMIT 10];
        List<Account> accnList=[SELECT ID FROM Account WHERE CreatedDate=TODAY ORDER BY CreatedDate DESC LIMIT 10];

        if(conList.size() >0 && accnList.size() > 0){
            objectCollection.addAll(conList);
            objectCollection.addAll(accnList);
        }
        return objectCollection;
    }
}