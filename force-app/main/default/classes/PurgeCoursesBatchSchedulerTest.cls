@isTest
private class PurgeCoursesBatchSchedulerTest {
    @isTest
    static void testScheduler() {
        // Create test data
        List<Course__c> courses = new List<Course__c>();
        for (Integer i = 0; i < 10; i++) {
            courses.add(new Course__c(Name='Course ' + i, Type__c='Onsite', End_Date__c=Date.today().addMonths(-3)));
        }
        insert courses;
        
        // Schedule the job to run in 1 minute
        Test.startTest();
        String jobName = 'PurgeCoursesJob';
        String cronExpression = '0 0 3 * * ?';
        PurgeCoursesBatchScheduler scheduler = new PurgeCoursesBatchScheduler();
        System.schedule(jobName, cronExpression, scheduler);
        Test.stopTest();
        
        // Verify that the job was scheduled
        List<CronTrigger> cronTriggers = [SELECT Id, CronExpression, NextFireTime FROM CronTrigger WHERE CronJobDetail.Name = :jobName];
        System.assertEquals(1, cronTriggers.size());
        
        // Wait for the job to run
        Test.startTest();
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator());
        Test.stopTest();
        
        // Verify that the Course records were deleted
        List<Course__c> remainingCourses = [SELECT Id FROM Course__c];
        System.assertEquals(0, remainingCourses.size());
    }
    
    // Helper class to generate mock HTTP responses for email notifications
    private class MockHttpResponseGenerator implements HttpCalloutMock {
        public HTTPResponse respond(HTTPRequest request) {
            HTTPResponse response = new HTTPResponse();
            response.setStatusCode(200);
            response.setStatus('OK');
            return response;
        }
    }
}