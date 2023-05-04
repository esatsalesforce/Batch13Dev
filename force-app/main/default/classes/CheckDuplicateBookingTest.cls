@isTest
public class CheckDuplicateBookingTest {
    public static testMethod void testDuplicateBooking() {
        // Create a test Course and Professor
        Admission_Officer__c officer = new Admission_Officer__c(Name__c ='Test Officer',Email__c='testmail@test.com', phone__c ='1234567890');
        insert officer;
        Course__c testCourse = new Course__c(Name__c = 'Test Course',Start_Date_Time__c= datetime.now().addDays(1), Admission_Officer__c=officer.Id);
        insert testCourse;
        Professor__c testProfessor = new Professor__c(Name = 'Test Professor',Email__c='professor@test.com', Phone__c='12345678');
        insert testProfessor;
        
        // Create a first Course-Professor booking
        Course_Professor__c firstBooking = new Course_Professor__c(
            Course__c = testCourse.Id,
            Professor__c = testProfessor.Id
        );
        insert firstBooking;
        
        // Attempt to create a duplicate booking with the same course and professor
        Course_Professor__c duplicateBooking = new Course_Professor__c(
            Course__c = testCourse.Id,
            Professor__c = testProfessor.Id
        );
        Test.startTest();
        try {
            insert duplicateBooking;
            System.assert(false, 'Expected exception was not thrown');
        } catch (DMLException e) {
            ErrorLogUtility.insertErrorLog('rejectduplicaterecord', ex.getmessage());
        }
        Test.stopTest();
        
        // Create a booking with a different professor
        Professor__c secondProfessor = new Professor__c(Name = 'Second Professor',Email__c='professorr@test.com', Phone__c='123456783');
        insert secondProfessor;
        Course_Professor__c differentProfessorBooking = new Course_Professor__c(
            Course__c = testCourse.Id,
            Professor__c = secondProfessor.Id
        );
        insert differentProfessorBooking;
        
        // Create a booking with a different course
        Admission_Officer__c officer2 = new Admission_Officer__c(Name__c ='Test Officerr',Email__c='testmaill@test.com', phone__c ='12345678905');
        insert officer2;
        Course__c secondCourse = new Course__c(Name__c = 'Second Course',Start_Date_Time__c= datetime.now().addDays(1), Admission_Officer__c=officer2.Id);
        insert secondCourse;
        Course_Professor__c differentCourseBooking = new Course_Professor__c(
            Course__c = secondCourse.Id,
            Professor__c = testProfessor.Id
        );
        insert differentCourseBooking;
    }
}
