import { LightningElement, wire } from 'lwc';

import {getObjectInfo} from 'lightning/uiObjectInfoApi';

import CONTACT_OBJ from '@salesforce/schema/Contact';

export default class GetObjectInfo_Contact extends LightningElement {
    recordTypeIdContact;

    @wire(getObjectInfo,{objectApiName:CONTACT_OBJ})
    contactHandler({data,error}){
        if (data){
            console.log(data);
            this.recordTypeIdContact=data.defaultRecordTypeId;
        }
        if(error){
            console.log(error);
        }
    }
}