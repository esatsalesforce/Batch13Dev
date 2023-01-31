public class StringAssigment {
    public void stringMethod5() {
        String localString ='Thanks for the session on the string.';
            system.debug(localString);
        integer lengthOfStr = localString.length();
            system.debug('length of local string string: ' + lengthOfStr);

        string capitalStr = localString.toUpperCase();
        system.debug('local string in CAPITAL: ' + capitalStr);

        Boolean containsSession = localString.contains('session');
        system.debug('contains session?????? ' + containsSession);

        Boolean containsSession2 = localString.contains('sessions');
        system.debug('contains sessions?????? ' + containsSession2);

        Boolean containsSession3 = localString.contains('SESSION');
        system.debug('contains SESSION????? ' + containsSession3);

        


    }
}