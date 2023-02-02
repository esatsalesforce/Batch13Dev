public class SoqlParentChildAssignment {
    public static void printContactAccounts() {
        list<contact> lstContact = [select id, name, account.id,account.name from contact];
        for ( contact eachContact : lstContact){
            system.debug( 'contact name : ' + eachContact.name +', its account id is '+ eachContact.account.id + ' , its account name is '+ eachContact.Account.Name);
        }

    }
    public static void printAccountContacts() {
        list<account> lstAccount =[select id, name, (select id,name from contacts) from account];
        for(account eachAccount:lstAccount){
            system.debug('Account name is '+eachAccount.Name);
            for(contact eachContact :eachAccount.contacts){
                system.debug('Contact id is: '+ eachContact.id +' Contact name is: '+eachContact.Name);
            }

        }
        
    }
}