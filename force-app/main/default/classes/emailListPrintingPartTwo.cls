public  class emailListPrintingPartTwo {
    public emailListPrintingPartTwo() {
        System.debug('This is a call from the ctor');
    }

    // write a method that query all contacts associated to an account name and return 
    // a list of email Ids of all these contacts
    public static List<String> getEmailList(String accountName){
    List<String> mailBox = new List<String>();
    List<Contact> ContactList = [SELECT Id,Email FROM Contact WHERE AccountId =:accountName];
    if(ContactList.size()>0){
        for(Contact con:ContactList){
            if(con.Email!=' '){
                mailBox.add(con.Email);
            }
        }
    }
    return mailBox;
    }

}