@isTest
public class DmlDemoAgainTest {
    @isTest
    private static void testInsertStdObj() {
        DmlDemoAgain.dmlInsertDemo_stndObj();

        account acc =[select id,name from account where name ='softinnovas' limit 1];
        system.debug(acc!= null);
        system.assertEquals('softinnovas', acc.name);
    }
    @isTest
    private static void testInsertCstObj(){
        DmlDemoAgain.dmlInsertDemo_cstmObj();
        list<salesforce_Project__c> listSP = [select id, name, project_name__c from Salesforce_Project__c where Project_Name__c='Learn dml batch 13'];
        system.assertEquals(1,listSP.size());
        assert.areEqual(1,listSP.size());
    }
    @isTest
    private static void testUpdateDemo_stndObj3(){
        Account acc = new account();
        acc.Name='softinnovas';
        insert acc;
        
        DmlDemoAgain.dmlupdateDemo_stndObj3();

        Account updatedAcc =[select id, name,phone from account limit 1];
        system.assertEquals('Softinnovas Inc.',updatedAcc.name);
        assert.areEqual('Softinnovas Inc.',updatedAcc.Name);
        assert.areEqual('234543234567' ,updatedAcc.phone);

    }
    @isTest
    private static void testInsertDemo_stndObj2(){
        Account acc = new account();
        acc.Name='softinnovas';
        insert acc;

        DmlDemoAgain.dmlInsertDemo_stndObj2();

        contact c= [select id,lastname,accountid from contact where lastname='Biden'];
        assert.areEqual(acc.id, c.accountId);
        system.assert(c!=null);

    }
    @istest
    private static void dmlInsertDemo_cstmObj2() {
        Salesforce_Project__c sp = new   Salesforce_Project__c();
        sp.Project_Name__c='test sp';
        insert sp;
        DmlDemoAgain.dmlInsertDemo_cstmObj2();

        salesforce_Ticket__c newST=[select subject__c,priority__c,Salesforce_Project__c from salesforce_Ticket__c where Subject__c='create related record'];
        assert.areEqual(sp.id,newST.Salesforce_Project__c); 
    }
}