@isTest
public class SalesforceProjectTriggerTest {
    @TestSetup
    static void makeData(){
        salesforce_project__c sfProject1 = new salesforce_project__c(Project_Name__c = 'Test Project', Status__c='New');
        insert sfProject1;
        salesforce_ticket__c sfTicket1= new Salesforce_Ticket__c(Subject__c='Test Ticket',salesforce_project__c=sfProject1.id,status__c='Completed');
        insert sfTicket1;
    }
    @isTest
    public static void testMethod1() {
        Exception expectedException;
        salesforce_project__c sfProject1=[select Id, status__c, project_Name__c from Salesforce_Project__c limit 1];
        test.startTest();
        try{
            sfProject1.project_Name__c='Updated Test Project';
            sfProject1.status__c='Completed';
            update sfProject1;
        }
        catch(Exception d){
            expectedException = d;
        }
        Test.stopTest();
        system.assertNotEquals(null, expectedException, 'All tickets are not completed');
    }
}