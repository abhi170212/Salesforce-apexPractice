public without sharing class taskGetter {
  // write a method to identify last 5 tasks created today 
  public static List<Task> getLatestTasksMethod(){
    return [SELECT Id FROM TASK WHERE CreatedDate=TODAY ORDER BY CreatedDate DESC LIMIT 5];
  }
}