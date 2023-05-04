public  class DML2_Assgn {
    public static void insert_dml() {
        account acc = new account(); 
        acc.Name = 'esat Assignment';
        insert acc;

        account acc2=new account();
        acc2.Name='Esat2 Assignment';
        insert acc2;
        
    }
    public static void updating_dml() {
        Account ac = new account();
        ac.Name = 'Account Created';
        insert ac;

        ac.Name = 'Account Updated';
        update ac;

    }
    public static void createBulkContacts(){
        list<contact>  ctList = new list<contact>();
        contact co1=new contact();
        co1.FirstName='Mark';
        co1.LastName='Ruffalo';
        ctList.add(co1);

        contact co2=new contact();
        co2.FirstName='Mark';
        co2.LastName='Ruffalo';
        ctList.add(co2);

        contact co3=new contact();
        co3.FirstName='Chris';
        co3.LastName='Hemsworth';
        ctList.add(co3);

        contact co4=new contact();
        co4.FirstName='Scarlet';
        co4.LastName='Johansson';
        ctList.add(co4);

        contact co5=new contact();
        co5.FirstName='Scarlet';
        co5.LastName='Johansson';
        ctList.add(co5);

        if (!ctList.isEmpty()){
            insert ctList;
        }
    }
    public  static list<contact> searchForContacts(string x) {
        List<Contact> cont= [select id,name from contact where lastName =:x];
        return cont;
    }

}