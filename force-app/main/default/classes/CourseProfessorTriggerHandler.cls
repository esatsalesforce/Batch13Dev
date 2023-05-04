public class CourseProfessorTriggerHandler {
  public static void rejectDuplicateRecord(List<Course_Professor__c> newCP) {
    try {
      Set<Id> professorIds = new Set<Id>();
      // Collect the professor Ids and map the professor to their course (if any)
      for(Course_Professor__c cp : newCP) {
          professorIds.add(cp.Professor__c);
         }
      // Query for any existing courses for the professors in the new records
      List<Course_Professor__c> existingBookings = [SELECT Id, Professor__c, Course__c FROM Course_Professor__c WHERE Professor__c IN :professorIds];
      
      // Throw an error if there is already a booking for a professor's course in the new records or existing records
    
      for (course_professor__c eachnewCp : newCp) {
        for (Course_Professor__c eachCp : existingBookings) {
          if (eachCp.professor__c==eachnewcp.professor__C&&eachCp.course__c==eachnewcp.course__c) {
            eachnewcp.addError('This is a duplicate record of' + String.valueOf(existingBookings));
          }
       } 
      }
      }catch (Exception ex) {
            ErrorLogUtility.insertErrorLog('rejectduplicaterecord', ex.getmessage());
    }      
  } 
}