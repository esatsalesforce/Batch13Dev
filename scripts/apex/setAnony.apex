SetDEmo.citySet();
SetDEmo.randomIntegerSet();

List<Integer> l1 = new List<Integer>();
l1.add(10);
l1.add(15);
l1.add(21);
l1.add(15);
Set<integer> setInt = SetDEmo.setFromList(l1);
system.debug('l1 list '+l1);

        Set<String> cities =new Set<String>();
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('BERLIN');
        Set<String> capCities = SetDEmo.uppercaseSet(cities);

        system.debug('cities in capital '+capCities);