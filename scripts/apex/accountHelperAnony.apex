Map<Id,Account> accountMap= new map<id,Account>([select id,name from account]);
Set<Id> accountIds = accountMap.keySet();
AccountHelper.countContactsOnAccount(accountIds);