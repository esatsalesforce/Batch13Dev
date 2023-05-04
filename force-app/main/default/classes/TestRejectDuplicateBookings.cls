@isTest
private class TestRejectDuplicateBookings {
    @TestSetup
    public static void makeData(){
        Admission_Officer__c officer = new Admission_Officer__c(Name__c ='Test Officer',Email__c='testmail@test.com', phone__c ='1234567890');
        insert officer;

        course__c course = new course__c (Admission_Officer__c = officer.Id, Name__c ='Test Course', Start_Date_Time__c = datetime.now().addDays(1),Max_Seats__c = 10, Live__c =true );

        insert course;

        Professor__c professor= new Professor__c(Name='Test Professor',Email__c='professor@test.com', Phone__c='12345678');
        insert professor;

        Course_Professor__c courseProfessor = new Course_Professor__c(Course__c = course.Id,Professor__c = professor.Id);
        insert courseProfessor;
    }
    
    @isTest
    static void testDuplicateBooking() {
        Course_Professor__c systemRec=[select Course__c, Professor__c from Course_Professor__c Limit 1];

        test.startTest();
        try {
                insert new Course_Professor__c(Course__c = systemRec.Course__c, Professor__c =systemRec.Professor__c);
        } catch (Exception exc) {
            
        }
        test.stopTest();

        integer systemCount =[select COUNT() FROM Course_Professor__c];
        system.assertEquals(1,systemCount);
        
    }
}

/*Course__c testCourse = new Course__c(Name__c='Test Course', Admission_Officer__c= 'Esat');
        Professor__c testProfessor = new Professor__c(Name='Test Professor');
        insert testCourse;
        insert testProfessor;
        
        // Create a test booking
        Course_Professor__c testBooking = new Course_Professor__c(Course__c=testCourse.Id, Professor__c=testProfessor.Id);
        insert testBooking;
        
        // Try to create another booking for the same course and professor
        Course_Professor__c testDuplicate = new Course_Professor__c(Course__c=testCourse.Id, Professor__c=testProfessor.Id);
        Test.startTest();
        // Insert the duplicate booking and expect an error
        try {
            insert testDuplicate;
            System.assert(false, 'Expected error was not thrown');
        } catch(DmlException e) {
            System.assert(e.getDmlMessage(0).contains('A professor can only be booked for one course at a time.'), 'Incorrect error message');
        }
        Test.stopTest();
        */