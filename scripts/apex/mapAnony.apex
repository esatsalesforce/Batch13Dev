map<string, string> mapCntCurrency = new map<string, string>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France','Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkiye', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');
mapCntCurrency.put('Canada', 'CDollar');

system.debug(mapCntCurrency);

string IndiaCurrency =mapCntCurrency.get('India');
string TurkeyCurrency= mapCntCurrency.get('Turkiye');
system.debug('India currency is '+IndiaCurrency);
system.debug('Turkiye currency is '+TurkeyCurrency);

Set<String> countries = mapCntCurrency.keySet();
system.debug('all countries an the map are '+countries);

List<String> currencies = mapCntCurrency.values();
system.debug('all currencies '+ currencies);

Set<String> countrySet =mapCntCurrency.keySet();
for (string eachKey : countrySet) {
    string printString =' Country is '+eachKey;
    system.debug(printString);
    string eachValue= mapCntCurrency.get(eachKey);
    printString+=' , is currency is '+eachValue;
    system.debug(printString);
    
}