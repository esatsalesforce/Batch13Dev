public class PrimitiveDataType2 {
    public void printNewDate(){
        system.debug('print new dates here.');
        //new date instance             year month day
        Date newDate = Date.newInstance(1995,  02,  15);
        system.debug('new date is ==> ' + newDate);

        Date newDate2 = Date.newInstance(2022,  9,  5);
        system.debug('new date2 is ==> ' + newDate2);

        Date todayDate = Date.today();
        system.debug('today date is ' + todayDate);
    }

    public void printNewTime(){
        //                          hour, min, sec, millisec
        Time myTime = Time.newInstance(18, 15, 10, 50);
        system.debug('my time is --> ' + myTime);

        Time meTime = Time.newInstance(9, 80, 30, 30);
        system.debug('me time is --> ' + meTime);
    }

    public void printNewDateTime(){
        Date newDate = date.today();
        Time newTime = time.newInstance(8, 30, 0, 0);

        //1. new DAtetime using Date and Time
        Datetime dt1 = datetime.newInstance(newDate, newTime);
        system.debug('dt 1 is ==> ' + dt1);

        //2.new Datetime using Year, month, day
        Datetime dt2 = datetime.newInstance(2020, 7, 7);
        system.debug('dt2 is ==> ' + dt2);

        //3. YEAR, MONTH, DAY, HOUR, MINUTE, SECOND
        Datetime dt3 = datetime.newInstance(2022, 1 ,10, 5, 15, 10);
        system.debug('dt3 is ' + dt3);

        long longTime = 0;
        Datetime dt41= Datetime.newInstance(longTime1);
        system.debug('dt41 '+dt41);

        Long longTime2 =1341828283000L;
        Datetime dt42 =Datetime.newInstance(longTime2);
        system.debug('dt42 '+ dt42);

        Datetime dt6 =Datetime.now();
        system.debug('dt6 is ' + dt6);

        Datetime dt5 = datetime.newInstance(2021, 4, 9, 15, 15, 15);
        system.debug('dt5 '+dt5);
    }
}
