trigger CourseProfessorTrigger on course_professor__c (before insert, before update) {
    if (trigger.isBefore ) {
      CourseProfessorTriggerHandler.rejectDuplicateRecord(trigger.new);
    }
    }