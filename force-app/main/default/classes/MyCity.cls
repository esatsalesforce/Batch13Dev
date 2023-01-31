public class MyCity {
    public void cityInformation() {
        String country = 'Gezmek istediğim ülke Türkiye';
        string city = 'görmek istediğim sehir muğla.';
        string a = country + city;
        system.debug(a);
        date Turkiye = date.newInstance(1923, 10, 29);
        system.debug('Türkiye"nin kurulus tarihi: '+Turkiye);
        time sun=time.newInstance(06, 13, 00, 00);
        date todaysdate =date.today();
        date month36 =todaysdate.addMonths(-36);
        system.debug('Bugünün tarihi: '+todaysdate+ 've 36 ay öncesinin tarihi: '+month36 );


    }
    public void StringMethod(){
        string job ='I am a salesforce developer.';
        system.debug(job);
        boolean checkjob = job.contains('force');
        integer checkCharacter = job.length();
        string capital =job.toUpperCase();
        system.debug('cümlemizde force kelimesi var mi?' + checkjob ); 
        system.debug('cümledeki karakter sayisi' + checkCharacter);
        system.debug('Cümlenin yeni hali: ' + capital);

    }
    public void dateMethod(){
        date a =date.today();
        system.debug('bugünün tarihi:'+a);
        datetime b = Datetime.now();
        system.debug('bugünün tarihi ve saati:'+b);
        datetime c= b.addHours(50);
        system.debug('50 saat sonrasi:'+c);
    }
   
    
}