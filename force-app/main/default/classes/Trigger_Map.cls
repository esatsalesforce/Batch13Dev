public class Trigger_Map {
    public Id InsertSF_Project() {
        Salesforce_Project__c sfPro=new Salesforce_Project__c();
        insert sfPro;
        return sfPro.id;
    }
    public void UpdateSF_Project(Id projectId,String projectName){
        Salesforce_Project__c sfPro=[select id, project_Name__c from Salesforce_Project__c where Id=:projectId];
        sfPro.project_Name__c=projectName;
        update sfPro;
    }
}