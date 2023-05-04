public class SoqlParentChildAssignment {
    public static void printContactAccounts() {
        list<Contact> lstContact =[Select Id, Name, Account.Id,Account.Name FROM Contact];
        for (Contact eachContact : lstContact) {
            system.debug('Contact name= '+ eachContact.Name + ' its acc id is '+ eachContact.Account.Id + ' , its acc name is ' + eachContact.Account.Name);
        }
    }
    public static void printAccountContacts() {
        List<Account> lstAccount =[Select id,name,(select id, name from contacts)from Account];
        for (Account eachAcc : lstAccount) {
            system.debug('Acc Name => '+ eachAcc.Name);
            for (Contact eachContact : eachAcc.Contacts) {
                system.debug('-- Contact Id => '+ eachContact.Id + ' , Contact Name => '+eachContact.Name);
            }
        }
    }
}