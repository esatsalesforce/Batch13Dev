@isTest
public class AccountBatchTest {
    @isTest
    public static void testBatch1() {
        list<account> listAcc = new list<account>();
        for (Integer i = 0; i < 900; i++) {
            account a =new account();
            a.name ='batch test '+ i;
            a.Active__c ='yes';
            a.Description='Test. ';
            listAcc.add(a);            
        }
        insert listAcc;
        Test.startTest();
        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch (ab, 900);
        Test.stopTest();
        List<account> allAccounts = [select description from account];
        for (account ac : allaccounts) {
            assert.isTrue(ac.Description.containsIgnoreCase('batch'));
        }
    }
}