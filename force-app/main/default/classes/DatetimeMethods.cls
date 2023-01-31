public class DatetimeMethods {
    public void calculateAgeInMonths() {
        date birthDate = date.newInstance(1980, 11, 11);

        date todayDate = date.today();

        Integer ageInMonths = BirthDate.monthsBetween(todayDate);
        system.debug('Brad age in months =>' + ageInMonths);

        Integer ageInDays = birthDate.daysBetween(todayDate);
        system.debug('Brad age in days=> '+ ageInDays);

    }
    public void birthDateTimeInMS(){
        datetime birthDT=datetime.newInstance(1980, 11, 11, 12, 12, 12);
        long milisecBirthDT=birthDT.getTime();
        system.debug('birth datetime in miliseconds is '+milisecBirthDT);
    }

    public void printSubscriptionEndDate(){
        date subStartDate = date.today();

        date subEndDate = subStartDate.addDays(1000);
        system.debug('subs end date is ' + subEndDate);

        integer endYear = subEndDate.year();
        Integer endMonth =subEndDate.month();
        system.debug('endyear is '+ endYear);
        system.debug('end month is '+endMonth);
    }

    public void PrintOfferEndDateTime (){
        datetime offerStart = Datetime.now();

        datetime offerEnd = offerStart.addHours(51);
        system.debug('offer end datetime is '+offerEnd);

        date offerEndDATE= offerEnd.date();
        system.debug('date of offer end '+ offerEndDATE);
    }
        
}