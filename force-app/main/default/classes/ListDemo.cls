public class ListDemo {
    public static string candidatesList(integer i) {
        
    List<String> listCandidates =new List<String>();
    listCandidates.add('marc');
    listCandidates.add('Elon');
    listCandidates.add('Bill');
    listCandidates.add('Marc');
    system.debug('candidates list is '+listCandidates);

    string candidate ='';
    if (i>=0 && i < listCandidates.size() ) {
        candidate=listCandidates[i];
    } else {
        candidate='No such candidate found.Try again.';
    }
    return candidate;

    }
    public static void randomIntegerList(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        system.debug('list of random integers is '+listInteger);

        integer index3value =listInteger.get(3);

        integer index3value2= listInteger[3];
        system.debug('value at index 3 '+ index3value);
        system.debug('value at index 3, again '+index3value2);

    }
    public static void allCats(){
        List<cat> cats = new List<cat>();
        cat c2 =new cat('fluffykins','white');
        cat c1= new cat('tekir','black');
        cat c3=new cat('findik','grey');
        cat sfcat=new cat();

        cats.add(c1);
        cats.add(c2);
        cats.add(c3);
        cats.add(sfcat);
        system.debug('all cats '+cats);
        if (!cats.isEmpty()) {
            system.debug(cats[0]);
            
        }
    }
    public static void iterateListInteger() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        for (integer eachInteger : listInteger) {
            system.debug(eachInteger);
            
        }
    }
    public static integer add( list < integer > listInt) {
        integer sum=0;
        for (integer eachInt : listInt) {
            sum +=eachInt;
        }
        return sum;
    }

}