Set<string> fruitsSet = new Set<string>{'Apple','Orange','Banana','Kivi'};
Integer count=0;
for(String eachFruit : fruitsSet ){
    count ++;
    system.debug(count + '. fruit is: '+ eachFruit);
}
system.debug(' size of set is '+ fruitsSet.size());
fruitsSet.add('Apricot');
system.debug('does set contains apricot: ' +fruitsSet.contains('Apricot'));
system.debug('Fruit set is empty?: '+ fruitsSet.isEmpty());