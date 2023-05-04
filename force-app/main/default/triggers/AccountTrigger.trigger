trigger AccountTrigger on Account (before insert,before update, after insert,after update ) {
    system.debug('--- trigger start ----');
    if (Trigger.isAfter && Trigger.isInsert) {

      AccountHandler_assg.createContact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }


/*
    if (Trigger.isBefore) {
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        //call VIP update method.
        AccountTriggerHandler.updateVIPForAllContact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }


    if (Trigger.isBefore) {
            for (Account eachAcc : Trigger.new) {
                if (Trigger.isInsert && eachAcc.active__c == 'Yes') {
                    eachAcc.Description = 'Account is active now. Enjoy buddy!';
                }
                if (Trigger.isUpdate) {
                    string newActive = eachAcc.Active__c;
                    Account oldAccount = trigger.oldMap.get(eachAcc.Id);
                    string oldActive = oldAccount.Active__c;
                    if(newActive != oldActive && newActive == 'Yes'){
                    eachAcc.Description = 'Account is active now. Enjoy Enjoy buddy!';
                }
            }
        }
    }
    
 
    if (Trigger.isBefore) {
            for (Account eachAcc : Trigger.new) {
                if (Trigger.isInsert && eachAcc.active__c == 'Yes') {
                    eachAcc.Description = 'Account is active now. Enjoy buddy!';
                }
                if (Trigger.isUpdate) {
                    string newActive = eachAcc.Active__c;
                    Account oldAccount = trigger.oldMap.get(eachAcc.Id);
                    string oldActive = oldAccount.Active__c;
                    if(newActive != oldActive && newActive == 'Yes'){
                    eachAcc.Description = 'Account is active now. Enjoy Enjoy buddy!';
                }
            }
        }
    }

    Map<id, account> trgNewMap = trigger.newMap;
    Map<Id,Account> trgOldMap =trigger.oldMap;

    if (trigger.isAfter&&trigger.isUpdate) {
        for (Id eachID:trgNewMap.keySet()){
            account newAcc=trgNewMap.get(eachId);
            account oldAcc=trgOldMap.get(eachId);


            system.debug('new acc name is '+newAcc.Name + ', its old name was ' +oldAcc.Name);
            system.debug('--for each END--');
          string newWebsite = newAcc.Website;
            system.debug('newWebsite is ===> ' + newWebsite);
            string oldWebsite = oldAcc.Website;
            system.debug('oldWebsite is ===> ' + oldWebsite);
            if (newWebsite != oldWebsite) {
                system.debug('For account ' + newAcc.Name + ', new WEBSITE is ' + newWebsite);
            }
        }
    }
}
        if (trigger.isAfter&&trigger.isUpdate) {
        system.debug('==AFTER UPDATE==');
        Set<id> accIds = trgNewMap.keySet();
        Set<Id> accIdsOld =trgOldMap.keySet();
    
        for (Id eachID:accIds){
            system.debug('--for each START--');
            system.debug('each id is '+ eachID);
            account newAcc=trgNewMap.get(eachId);
            account newAcc=trgOldMap.get(eachId);
            system.debug('new acc name is '+newAcc.Name + ', its old name was ' +oldAcc.Name);
            system.debug('--for each END--');
          
        }
    }




if (trigger.isBefore&&trigger.isInsert) {
        system.debug('==BEFORE INSERT==');
        system.debug('Trigger.newMap '+trgNewMap);
        system.debug('trigger.oldMap '+trgOldMap);  
    }
    if (trigger.isAfter&&trigger.isInsert) {
        system.debug('==AFTER INSERT==');
        system.debug('Trigger.newMap '+trgNewMap);
        system.debug('trigger.oldMap '+trgOldMap);  
    }
    if (trigger.isBefore&&trigger.isUpdate) {
        system.debug('==BEFORE UPDATE==');
        system.debug('Trigger.newMap '+trgNewMap);
        system.debug('trigger.oldMap '+trgOldMap);  
    }
    if (trigger.isAfter&&trigger.isUpdate) {
        system.debug('==AFTER UPDATE==');
        system.debug('Trigger.newMap '+trgNewMap);
        system.debug('trigger.oldMap '+trgOldMap);  
    }





    if (trigger.isBefore && Trigger.isInsert) {
        system.debug('trigger.old before insert-->'+trigger.new);
    }
    if (Trigger.isAfter&&Trigger.isInsert) {
        system.debug('trigger.old before udpate --> ' + trigger.old);
    }
    if (Trigger.isafter && Trigger.isUpdate) {
            system.debug('trigger.old after update --> ' + trigger.old);

    }



    if (trigger.isBefore && Trigger.isInsert) {
        system.debug('trigger.new before insert-->'+trigger.new);
    }
    if (Trigger.isAfter&&Trigger.isInsert) {
        system.debug('trigger.new before udpate --> ' + trigger.new);
    }
    if (Trigger.isafter && Trigger.isUpdate) {
            system.debug('trigger.new after update --> ' + trigger.new);

    }

    
    
        list<account> newAccounts = trigger.new;

    if (trigger.isAfter) {
        system.debug('after trigger, new data==> '+newAccounts);
        system.debug('number of records inserted/updated'+ newAccounts.size());

        for (account eachAccount : newAccounts ) {
            system.debug('*** account id is '+ eachAccount.Id + 'account name is '+ eachAccount.Name);
        }
    
    
    if (Trigger.isBefore) {
        system.debug('we are in BEFORE trigger.');
        if (trigger.isInsert) {
            system.debug('before insert trigger called.');
            
        }
        if (trigger.isUpdate) {
            system.debug('before uıpdate trigger called');
        }
    }
    if (trigger.isAfter) {
        system.debug('we are in AFTER trigger.SBNC');
        if (trigger.isInsert) {
            system.debug('After insert trigger called');
            
        }
        if (trigger.isUpdate) {
            system.debug('after update trigger called');            
        }
    }

if(trigger.isBefore && trigger.isInsert){
            system.debug('before insert trigger called.');
    }
    if (trigger.isAfter && trigger.isInsert) {
            system.debug('after insert trigger called.');
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('before update trigger called.');
}
if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger called.');
}
    system.debug('==== trigger end ====');
    
   system.debug('-------');
    system.debug('.isInsert --> ' + trigger.isInsert);
    system.debug('.isUpdate --> ' + trigger.isUpdate);
    system.debug('-------');

    system.debug('-------');
    system.debug('.isBefore --> ' + trigger.isBefore);
    system.debug('.isAfter --> ' + trigger.isAfter);
    system.debug('-------');

    if(Trigger.isBefore){
        system.debug('before insert account trigger called.');
    }
    if(Trigger.isAfter){
        system.debug('after insert account trigger called.');
    }
    */

}