trigger CaseTrigger on Case (before insert,before update) {
    system.debug('----start----');
    if (trigger.isBefore) {
            system.debug('before insert case trigger called');
    system.debug('number of records -->' +trigger.size);
    CaseTriggerHandler.numberOfRecords = CaseTriggerHandler.numberOfRecords+trigger.size;
    CaseTriggerHandler.count++;
    system.debug('#of times trigger ran: ' +CaseTriggerHandler.count);
    system.debug('#of records updated: '+ CaseTriggerHandler.numberOfRecords);
    }
    system.debug('----END----');
}