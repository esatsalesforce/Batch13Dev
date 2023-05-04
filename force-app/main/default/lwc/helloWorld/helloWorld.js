import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    //Variables / Properties
myName = 'Esat';
myAge = 22;
myAddress; //undefined
isLWCInteresting = true;
//Arrays - similar to Apex List
students = ["ferzan","fulya","yakup","zeynep"];
//Object - {Key : Value} Similar to JSON
address = {
    city : "Los Angeles",
    state : "California",
    zipcode : 78240
};

myMethod(){
    let displayMessage = 'Method Message';
    console.log("Method Variable"+ displayMessage);

    console.log("Class Variable"+ this.myName);
}

}