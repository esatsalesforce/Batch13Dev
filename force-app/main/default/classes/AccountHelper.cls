public class AccountHelper {
@future
    public static void countContactsOnAccount(set<id> accountIds) {
        list<account> accList =[select id, name,(select id from contacts) from account where id in : accountIds];
        for (account acc : accList) {
            acc.number_of_contacts__c = acc.contacts.size();
        }
        update accList;
    }
}