public with sharing class AccountInvocable {
    @InvocableMethod(Label='Close Related Opportunities' category = 'Account')
    public static void closeOpportunities (List<Id> accountIds) {
        List<Opportunity> opps=[select id, StageName from Opportunity where AccountId in: accountIds  and StageName not in('Closed Won','Closed Lost')];

        if (!opps.isEmpty()) {
            for (Opportunity opp : opps) {
                opp.StageName='Closed Lost';
            }
            update opps;
        }
    }
}