public class Sf_assg {
    public static void insertSf() {
        List<Salesforce_Project__c> lstsf = new List<Salesforce_Project__c>();
        for(Integer i=0; i<10; i++){
            Salesforce_Project__c varsf= new salesforce_Project__c();
            varsf.Project_Name__c='Phone23';
            lstsf.add(varsf);
        }
        insert lstsf;
    }
    public static void updateSf() {
        List<Salesforce_Project__c> lstsf = [select id,project_Name__c from Salesforce_Project__c where Project_Name__c like '%Phone%' limit 1];
        for (Salesforce_Project__c varsf : lstsf) {
            varsf.Project_Name__c='Phone2';
        }
        upsert lstsf;
    }
}