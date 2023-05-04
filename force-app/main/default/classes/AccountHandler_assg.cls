public with sharing class AccountHandler_assg {
    public static void createContact(List<Account> accTriggerNew,
                                    List<account> accTriggerOld,
                                    Map<id, account> accTriggerNewMap,
                                    Map<id, account> accTriggerOldMap) {
        list<contact> newContact =new list<contact>();
        for (Account eachAcc : accTriggerNew) {
           contact c =new contact();
           c.AccountId=eachAcc.Id;
           c.LastName ='New Contact';
           newContact.add(c);            
        }
        if(!newContact.isEmpty()){
            insert newContact;
        }
    }
}