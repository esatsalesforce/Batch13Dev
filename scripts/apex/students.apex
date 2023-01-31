Map<String,Integer> markObtainInMaths =new Map<String,Integer>();

markObtainInMaths.put('0111CE112', 40);
markObtainInMaths.put('0111CE102', 19);
markObtainInMaths.put('0111CE100', 33);
markObtainInMaths.put('0111CE098', 40);

system.debug(markObtainInMaths.keySet());
system.debug(markObtainInMaths.values());

Set<String> uniqeRollNumber = markObtainInMaths.keySet();

List<Integer> marksObtainList = markObtainInMaths.values();

for(string eachNumber: uniqeRollNumber){
    if( markObtainInMaths.get( eachNumber )< 20 ){
        system.debug(eachNumber+ ' is not qualified for next class');

    }
}