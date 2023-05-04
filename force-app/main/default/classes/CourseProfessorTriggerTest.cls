@isTest
private class CourseProfessorTriggerTest {
    @TestSetup
    static void makeData(){
        Admission_Officer__c officer = new Admission_Officer__c(Name__c ='Test Officer',Email__c='testmail@test.com', phone__c ='1234567890');
        insert officer;

        course__c course = new course__c (Admission_Officer__c = officer.Id, Name__c ='Test Course', Start_Date_Time__c = datetime.now().addDays(1),Max_Seats__c = 10, Live__c =true );

        insert course;

        Professor__c professor= new Professor__c(Name='Test Professor',Email__c='professor@test.com', Phone__c='12345678');
        insert professor;

        Course_Professor__c courseProfessor = new Course_Professor__c(Course__c = course.Id,Professor__c = professor.Id);
        insert courseProfessor;
    }
    static testMethod void testRejectDuplicateRecord() {
        
        // Attempt to insert a duplicate record
        Course_Professor__c duplicateCP = new Course_Professor__c();
        duplicateCP.Professor__c = professor.Id;
        duplicateCP.Course__c = course.Id;
        
        Test.startTest();
        try {
            insert duplicateCP;
            System.assert(false, 'Expected an error to be thrown');
        } catch (DMLException ex) {
            ErrorLogUtility.insertErrorLog('rejectduplicaterecord', ex.getmessage());
        }
        Test.stopTest();
    }
}
