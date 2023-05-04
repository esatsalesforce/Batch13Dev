import { LightningElement } from 'lwc';

export default class Getters extends LightningElement {
    //Arrays 
students = ["ferzan","fulya","yakup","zeynep"];

get firstStudent(){
    return this.students[0];
}
get lastStudent(){
    return this.students[3];
}
}