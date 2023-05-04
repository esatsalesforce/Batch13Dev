trigger LeadTriger on Lead (before insert,before update ) {
    system.debug('--- trigger start ----');

    list<Lead> newLeads = trigger.new;
    if (trigger.isBefore && trigger.isInsert) {
        for (Lead eachLead : newLeads) {
            system.debug('***eachLead is '+ eachLead);
        }
    }
    if (trigger.isBefore && trigger.isUpdate) {
        for (lead eachLead : newLeads) {
            system.debug('***lead id is '+eachLead.Id + 'lead name is '+ eachLead.Name + 'lead description is '+ eachLead.Description);
            
        }        
    }
}