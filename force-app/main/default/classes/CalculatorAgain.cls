public class CalculatorAgain{

public void welcomeMessage(){
    system.debug('welcome to apex calc,updated');
    printNewMessage('welome welcome');

}
public void printNewMessage(string msg){
    system.debug(msg);
}

public string printAndReturnMessage(string m){

    string returnStr='';
    returnStr =m+'...Ok cool';
    return returnStr;
}    
void privatePrintMessage(string msg){
    system.debug('inside private method NOWW');
    system.debug(msg);
    system.debug('done with private');
    
}
public integer add(integer a, integer b){
  integer sum = a+b;
  return sum;  
}
public integer add(integer x, integer y, integer z ){
    integer sum =x+y+z;
    return sum;
}
public boolean leapYearCheck(date dt){
    integer year =dt.year();
    boolean lp = date.isLeapYear(year);
    return lp;
}
public string fifinci(){
    system.debug('Ekmek çikti');
    return'Yakup beyin ekmeği';
}
public void firinci2(){
    system.debug('ekemek pisti');
}
}