Map<string, decimal> currISOCodeAndExchangeMap = new Map<string, decimal>();
currISOCodeAndExchangeMap.put('AUD', 0.73);
currISOCodeAndExchangeMap.put('CAD', 0.78);
currISOCodeAndExchangeMap.put('EUR', 1.13);
currISOCodeAndExchangeMap.put('NZD', 0.68);
currISOCodeAndExchangeMap.put('INR', 0.013);
system.debug('AUD rate: '+currISOCodeAndExchangeMap.get('AUD') );
system.debug('SAD :? '+ currISOCodeAndExchangeMap.containsKey('SAD'));
Set<string> setBigOne = new Set<String>();
Set<String> setSmallOne =new Set<String>();

for(string eachOne : currISOCodeAndExchangeMap.keySet()){
    if (currISOCodeAndExchangeMap.get(eachOne)>1 ) {
        setBigOne.add(eachOne);        
    } else {
        setSmallOne.add(eachOne);        
    }
}
system.debug(setBigOne);
system.debug(setSmallOne);
