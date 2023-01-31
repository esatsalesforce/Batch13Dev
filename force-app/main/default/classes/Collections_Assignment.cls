public  class Collections_Assignment {
    public static void listMethods() {
        List<string> days = new List<string>();
        days.add('Monday');
        days.add('Tuesday');
        days.add('Wednesday');
        days.add('Thursday');
        days.add('Friday');
        days.add('Saturday');
        days.add('Sunday');
        system.debug('days of week '+days);
        boolean containDay =days.contains('Pazartesi');
        system.debug('İs days contains pazatesi?'+containDay);
        boolean emptyDay =days.isEmpty();
        system.debug('is there any empty day? '+emptyDay);
        integer sizeDay=days.size();
        system.debug(sizeDay);
        system.debug('value at 1 index '+ days.get(1));
        days.remove(1);
        system.debug('List afte removing element '+days);


    }
    public static void setMethods(){
        Set<string> setDays = new Set<string>();
        setDays.add('Monday');
        setDays.add('Tuesday');
        setDays.add('Wednesday');
        setDays.add('Thursday');
        setDays.add('Friday');
        setDays.add('Saturday');
        setDays.add('Sunday');

        List<string> days = new List<string>();
        days.add('Monday');
        days.add('Tuesday');
        days.add('Wednesday');
        days.add('Thursday');
        days.add('Friday');
        days.add('Saturday');
        days.add('Sunday');

        Set<string> cloneDays = new Set<string>();
        days.addAll(days);
        system.debug(cloneDays);

        Set<string> set2Days = new Set<string>();
        set2Days=cloneDays.clone();
        system.debug(set2Days);


    }
}