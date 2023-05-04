trigger Assignment1 on Contact (before update,after update) {
    
    if (trigger.isBefore) {
        system.debug('before update trigger is called');
    }
    if (trigger.isAfter) {
        system.debug('After update trigger is called');
        
    }

}