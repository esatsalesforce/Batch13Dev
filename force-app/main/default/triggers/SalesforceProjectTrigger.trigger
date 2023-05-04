trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update) {

    if (TRigger.isAfter&& Trigger.isInsert) {
        SalesforceProjectHandler.createDefaultTicket(Trigger.New);
    }
    if (Trigger.isBefore&& Trigger.isUpdate) {
        SalesforceProjectHandler.completeSPvalidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

   // List<salesforce_project__c> newSfProjectList=Trigger.new;
    /*if ( Trigger.isInsert &&Trigger.isBefore) {
        for(Salesforce_Project__c sfPro : newSfProjectList){
            sfPro.project_Name__c='New Trigger Project';
        }
    }
    if (Trigger.isUpdate&&Trigger.isAfter) {
        Map<Id,Salesforce_Project__c> newSfProjectMap= Trigger.newMap;
        Map<Id,Salesforce_Project__c> oldSfProjectMap= Trigger.oldMap;
        set<Id> sfProjectIds=newSfProjectMap.keyset();
        for (Id sfProjectId : sfProjectIds) {
            system.debug('Project name before update is :'+oldSfProjectMap.get(sfProjectId).project_Name__c);
            system.debug('project name after update is '+ newSfProjectMap.get(sfProjectId).project_Name__c);
        }
    }*/
   
   
    /*if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('calling future method now...');
        SalesforceProjectHandler.updateProjectDescription(trigger.newmap.keyset());
        system.debug('JUST called future method...');
        //call handler here.
       SalesforceProjectHandler.createDefaultTickdt(trigger.new);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        //call method to validate ticket completion.
        SalesforceProjectHandler.validateProjectCompletion(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (trigger.isAfter&&Trigger.isUpdate) {
        SalesforceProjectHandler.projectStatusChange(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        
    }*/
}