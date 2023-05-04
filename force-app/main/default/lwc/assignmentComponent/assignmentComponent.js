import { LightningElement } from 'lwc';

export default class AssignmentComponent extends LightningElement {
    firstName= 'Esat ';
    lastName='Yıldırım';
    age=65;
    cities=["istanbul","London","sakarya","kocaeli","aydın"];
    specialities = {
        developer:"so so",
        LWC:"good",
        admin:"perfect"

    };
    get fullName(){
        return this.firstName + this.lastName;
    }
    get thirdCity(){
        return this.cities[2];
    }

}