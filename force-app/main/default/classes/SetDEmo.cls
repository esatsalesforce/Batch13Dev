public class SetDEmo {
    public static void citySet() {
        Set<String> cities =new Set<String>();
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('BERLİN');

        system.debug('set of cities '+cities);

    }
    public static void randomIntegerSet(){
        Set<integer> integerSet = new Set<integer>();
        integerSet.add(10);
        integerSet.add(15);
        integerSet.add(21);
        integerSet.add(15);
        integerSet.add(15);
        system.debug('set of integers '+integerSet);

    }
    public static  set<Integer>  setFromList(List<Integer> ListInt){
        Set<Integer> returnSet = new Set<Integer>();
        returnSet.addAll(listInt);
        return returnSet;

    }
    public static set<string> uppercaseSet(Set<String> setStr) {
        Set<string> upprStr = new Set<string>();
        system.debug('setStr => '+setStr);
        for(String eachStr: setStr){
            system.debug('each str isss '+eachStr);
            string tempstr =eachStr.toUpperCase();
            upprStr.add(tempStr);
        }
        return upprStr;
    }
}