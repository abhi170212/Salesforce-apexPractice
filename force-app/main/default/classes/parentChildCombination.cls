public  class parentChildCombination {
    // write a method that accepts an account name and a contact name and checks if a parent child combo exists for the same or not.
    // If it does, it returns a boolean value of true.

    public static Boolean checkIfCombinationExists(String accountName,String contactName){
        List<Contact> conRecord =[SELECT id FROM Contact WHERE Name=:contactName and Account.Name=:accountName];
        if(conRecord.size() > 0){
            return true;
        }
        return false;
    }
}