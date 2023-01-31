public class Car13{

    public string carColor ='';
    public string carName;

    private Integer maxSpeed =140;


    public void switchOn(){
        
        system.debug('starting the car noww.');
    }
    public void drive(){
        system.debug('driving '+ carName);
    }
    public void driveMaxSpeed(){
        string description ='driving '+carName + 'of color '+carColor+'at'+maxSpeed+'km/hr';
        system.debug(description);
    }

}