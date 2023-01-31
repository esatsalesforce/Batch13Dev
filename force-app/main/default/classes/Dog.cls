public class Dog {
    public string name;
    public string color;
    public integer age;
    public static integer count=0;
    public Dog(String n, String c,Integer d) {
        age = 1;
        count ++;
        name=n;
        color=c;
        age=d;
        system.debug('Name: '+n+' Color: '+ c+ ' Age: '+age);
        checkAge();
        showCount();
    }
    public void checkAge(){
        if ((age>0)&&(age<=1)) {
            system.debug('puppy dog');
        } else if ((age>=1)&&(age<=3)) {
            system.debug('young puppy');
        } else if ((age>=3)&&(age<=5)) {
            system.debug('Adult dog');
        }else{
            system.debug('Old dog');
        }
    }
    public void showCount(){
        system.debug('total number of dogs created '+count);
    }
}