public  class SOQL_Assignment {
    public static void soql_WhereClause() {
        list<contact> lstContact = [select id,Name from contact where Name like 'A%'];
        system.debug('list of contact records which starts with A: '+lstContact );
        system.debug('Size of lstcontact: '+lstContact.size());
    }
    public static void soql_FromMethod() {
        list<contact> lstContact = [select id, lastname, Phone from contact];
        for(contact eachContact:lstContact){
            system.debug('lastname is '+ eachContact.lastname + ' phone is '+ eachContact.phone);
        }
        
    }
}