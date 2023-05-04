trigger CheckDuplicateBooking on Course_Professor__c (before insert, before update) {
    Set<Id> professorIds = new Set<Id>();
    Set<Id> courseIds = new Set<Id>();
    for (Course_Professor__c cp : Trigger.new) {
        professorIds.add(cp.Professor__c);
        courseIds.add(cp.Course__c);
    }
    List<Course_Professor__c> existingBookings = [SELECT Id, Professor__c, Course__c FROM Course_Professor__c WHERE Professor__c IN :professorIds AND Course__c IN :courseIds];
    for (Course_Professor__c cp : Trigger.new) {
        for (Course_Professor__c existingCp : existingBookings) {
            if (cp.Id != existingCp.Id && cp.Professor__c == existingCp.Professor__c && cp.Course__c == existingCp.Course__c) {
                cp.addError('A course cannot be scheduled twice for the same professor.');
            }
        }
    }
}
