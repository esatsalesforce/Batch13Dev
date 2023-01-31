public class DatetimeAssignment {
    public void diffofDate() {
        date varTomorrowDate =date.newInstance(2023, 1, 16);
        date varTodaysDate =date.newInstance(2023, 1, 15);
        integer difference = varTodaysDate.daysBetween(varTomorrowDate);
        system.debug('the difference between tomorrow date and today"s date is ' +difference);

    }
    public void timeCheck(){
        datetime varTomorrowDatetime = Datetime.newInstance(2023,1,16,07,00,00);
        system.debug('tomorrow datetime is '+ varTomorrowDatetime);
        datetime var10DaysDatetime =datetime.newInstanceGmt(2023, 1, 26, 09, 00, 00);
        system.debug('10 days date time is '+ var10DaysDatetime);
        long varDatetimeLong = 12339874361L;
        system.debug('datetime long is '+ varDatetimeLong);
        datetime varDays = var10DaysDatetime.addDays(7);
        system.debug('add 7 days to 10 days date time is '+ varDays);
    }
}