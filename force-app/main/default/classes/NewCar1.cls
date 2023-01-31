public class NewCar1 {
    integer currentSpeed=0;
    string carType= '';
    string carName;
    public void startCar(string carName,string carType) {
        string startCar1= carName +carType;
        system.debug(startCar1);
    }
    public void accelerate(integer x){
        currentSpeed +=x;
        system.debug(currentSpeed);
    }
    public void brake(integer y){
       currentSpeed-=y;
       system.debug(currentSpeed);
    }
    public void stopCar(){
        currentSpeed=0;
        system.debug(currentSpeed);
    }
    public void checkSpeed(){
        if (currentSpeed<=30&&currentSpeed>0){
            system.debug('City mode');
        }else if (currentSpeed > 31&& currentSpeed <= 60 ) {
            system.debug('Econumy mode');            
        }else{
            system.debug('Sports mode');
        }
    }
}