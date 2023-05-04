import { LightningElement } from 'lwc';

export default class TemplateLooping extends LightningElement {
    strList= ["madhu","Nur","Taner","Mani","Emre"];

    students=[
    {
        name:"Alihan ",
        rollNumber:12345 
    },
    {
        name:"Aydın ",
        rollNumber:234 
    },
    {
        name:"Fulya ",
        rollNumber:543 
    }
    ];
}