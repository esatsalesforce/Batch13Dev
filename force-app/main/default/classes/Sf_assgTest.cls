@isTest
public class Sf_assgTest {
   
    @isTest
    public static void insertSfTest() {
        Sf_assg.insertSf();
        list<Salesforce_Project__c> listSfProject=[select id, Project_Name__c from Salesforce_Project__c where Project_Name__c='Phone23'];
        system.assertEquals(10, listSfProject.size());
        system.assertEquals('Phone23', listSfProject[0].Project_Name__c);

    }
    @isTest
    public static void updateSfTest(){
        Sf_assg.insertSf();
        Sf_assg.updateSf();
        List<Salesforce_Project__c> listSFProject = [select id, Project_Name__c from Salesforce_Project__c where Project_Name__c='Phone2' limit 1];
        system.assertEquals(1, listSFProject.size());
        system.assertEquals('Phone2', listSFProject[0].Project_Name__c);
    }
}
        