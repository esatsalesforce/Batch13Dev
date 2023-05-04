import { LightningElement,track } from 'lwc';

export default class TwoWayBinding extends LightningElement {
    studentName="Esat";
    changeHandler(event){
        this.studentName=event.target.value;
    }
    ageHandler(event){
        this.age= event.target.value;
    }

    @track batch={
        batchName:"Batch 13",
        batchSize:70
    }
    module =["LWC"];

    batchNameHandler(event){
        console.log("Inside the method");
        this.batch.batchName=event.target.value;
    }
    get firstModule(){
        return this.module[0];
    }
    moduleHandler(event){
        this.module[0]=event.target.value;
    }
}