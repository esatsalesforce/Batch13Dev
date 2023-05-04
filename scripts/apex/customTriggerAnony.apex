Map<String,country_code__c> mapCountryCode = country_code__c.getAll();
system.debug(mapCountryCode);

for(string eachName: mapCountryCode.keySet()){
    country_code__c c =mapCountryCode.get(eachName);
    system.debug('country name is'+ eachName + ' its code is');
}