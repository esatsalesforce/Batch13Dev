public class Cat {
    public string name;
    public string color;

    public Cat() {
        system.debug('cat constructor called.');

    }
    public Cat(string n,string clr){
        name =n;
        color=clr;
        sleeping();
    }
    public void sleeping(){
        system.debug(name + 'is sleeping.dnd.');
    }
    public static void allCats(){
        List<cat> cats = new List<cat>();
        cat c2 =new cat('fluffykins','white');
        cat c1= new cat('tekir','black');
        cat c3=new cat('findik','grey');

        cats.add(c1);
        cats.add(c2);
        cats.add(c3);
        system.debug('all cats '+cats);


    }

}