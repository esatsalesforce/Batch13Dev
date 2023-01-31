public class SoqlDemo {
    /*public Static void accountSOQL_1() {
        list<account> listAccount =[SELECT id, name, phone from Account];
        system.debug('list of accounts '+listAccount);

    }
    public static void accountSOQL_11(){
        account acc = [SELECT id, name, phone from Account order by createddate DESC LIMIT 1];
        system.debug('account record '+ acc);
    }
    public static void accountSOQL_2(){
        account acc = [SELECT id, name, phone,accountNumber from Account order by createddate DESC LIMIT 1];
        system.debug('account record '+ acc);

        string aName=acc.Name;
        String aPhone=acc.Phone;
        system.debug('account name '+aName + ' account phone '+ aPhone + ' account number '+acc.AccountNumber);
    }
    public static void accountSOQL_3(){
        list<account> listAccount = [SELECT id, name, phone,accountNumber from Account order by createddate DESC];
        for(account eachAcc : listAccount){
            system.debug('----each acc start ----');
            system.debug('each acc: '+eachAcc);
            string accName= eachAcc.Name;
            String accPhone =eachAcc.Phone;
            system.debug('accName '+ accName+ ' phone '+accPhone+' account number is '+eachAcc.AccountNumber);

            system.debug('-------each acc end----');
        }
        
    }
    
    public static void account_soqlFilter(String accountName){
    list<account> listacc = [select name, phone from account where name = :accountName];
    system.debug('filter1: ' + listacc);

    }

    public static void account_soqlFilter() {
    string accountName = 'GenePoint';
    list<account> listacc = [select name, phone from account where name = :accountName];
    system.debug('filter1: ' + listacc);
    list<account> listacc = [SELECT name, phone FROM account WHERE name = 'GenePoint'];
   list<account> listacc = [SELECT name, phone FROM account WHERE name LIKE '%Point'];
   list<account> listacc = [SELECT name, phone FROM account WHERE name =: accountName];
   }*/
    /*public static void childToParent_SOQL1() {
    List<contact> listContacts =[select id, name,account.name,account.industry from contact where account.industry='energy'];
    for(contact  eachContact :listContacts){
        string accName=eachContact.account.Name;
        system.debug('contact name is '+ eachContact.Name+ ', its account name is '+ accName + ' and acc industry is '+ eachContact.account.industry);
    }   
   }
   public static void parentToChid_SOQL1(){
    list<account> listAccount = [select name, type,annualrevenue,
                        (select name,amount from opportunities where stagename='Closed Won')from Account where type = 'Customer - Direct'];
    for (account eachAcc:listAccount){
        system.debug('account name is '+ eachAcc.Name+ ' , its annual revenue is '+eachAcc.AnnualRevenue);
        system.debug('--------');
        List <Opportunity> eachAccOpp= eachAcc.Opportunities;
        for (opportunity eachOpp:eachAccOpp){
            system.debug('opp name is '+ eachOpp.Name + ' and amount '+ eachOpp.Amount);
        }
        system.debug('_______________');
    }
   }
    
   
   
   
   
   */
   public static void parentToChild_SOQL2() {
    list<salesforce_project__c> listSP = [select id, name, project_name__c,
                             (select subject__c, priority__c from salesforce_tickets__r) 
                             from salesforce_project__c];

    for (salesforce_project__c eachSP : listSP) {
        list<salesforce_ticket__c> listST = eachSP.salesforce_tickets__r;
        system.debug('list ST '+listST);
        integer totalTickets =listST.size();
        integer highPriorityTickets =0;
        for (salesforce_ticket__c eachST:listST){
            if(eachST.priority__c=='High'){
                highPriorityTickets++;
            }
        }
        system.debug('project name is '+ eachSP.project_name__c + 'total tickets '+ ', hp tickets '+ highPriorityTickets);
    }
   }

}