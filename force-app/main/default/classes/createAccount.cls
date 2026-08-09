public  class createAccount {
    public createAccount() {
        system.debug('This is the constructor');
    }

    public static  void createContact(String firstName,String LastName,String emailAddress,String phoneNumber) {
        // make a list and store the values in it
        // validate fields and then insert them 
        // use  bulkification 
        List<Contact> contactLists = new List<Contact>();

        if(firstName != '' && LastName!='' && emailAddress!=''){
            Contact newContact=new Contact();
            newContact.FirstName=firstName;
            newContact.LastName=LastName;
            newContact.Email=emailAddress;
            newContact.MobilePhone=phoneNumber;
            contactLists.add(newContact);
        }
        

        //--------------------------------------------------
        if(contactLists.size()>0){

            insert contactLists;
        }
        
    }
}