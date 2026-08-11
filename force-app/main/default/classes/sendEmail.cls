public with sharing class sendEmail {
 public static void sendAlertEmail(String emailAddress){
    if(String.isNotBlank(emailAddress)){

        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        List <String> toAddressList = new List<String>{emailAddress};
        mail.setSubject('URGENT!!--Take a look');
        mail.setPlainTextBody('This is a notification triggered by salesforce apex');
        mail.setToAddresses(toAddressList);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});

    }
 }
}