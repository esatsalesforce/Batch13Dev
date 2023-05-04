@isTest
public class SoqlParentChildAssignmentTest {
    @TestSetup
    static void makeData() {
        Account acc=new Account();
        acc.Name='Test Account1';
        insert acc;

        Contact c =new Contact();
        c.LastName='Test Contact1';
        c.AccountId=acc.Id;
        insert c;
    }
    @isTest
    private static void testprintContactAccounts() {
        SoqlParentChildAssignment.printAccountContacts();
    }
    @isTest
    private static void testprintAccountContacts() {
        SoqlParentChildAssignment.printContactAccounts();
    }
}