public class DeleteOldCourses implements Batchable<SObject>, Database.Stateful {

    public Database.QueryLocator start(Database.BatchableContext bc) {
        // Query for courses that are more than 2 months old and have been Onsite
        Date twoMonthsAgo = Date.today().addMonths(-2);
        String query = [SELECT Id FROM Course__c WHERE End_Date__c < :twoMonthsAgo AND Location__c = 'Onsite'];
        return Database.getQueryLocator(query);
    }

    public void execute(Database.BatchableContext bc, List<Course__c> courses) {
        // Delete the courses
        delete courses;
    }

    public void finish(Database.BatchableContext bc) {
        // Send email to Public Group "Daily Job" saying that batch has been processed
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setToAddresses(new String[] {'Daily_Job@yourorg.com'});
        email.setSubject('PurgeCoursesBatch processed');
        email.setPlainTextBody('The PurgeCoursesBatch has been processed.');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { email });
    }
}