import { LightningElement } from 'lwc';
import LEAD_OBJECT from '@salesforce/schema/Lead';
import LASTNAME_FIELD from '@salesforce/schema/Lead.LastName';
import COMPANY_FIELD from '@salesforce/schema/Lead.Company';
import STATUS_FIELD from '@salesforce/schema/Lead.Status';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class AssignmentLead extends LightningElement {
    objName=LEAD_OBJECT;
    fields={
        LastName : LASTNAME_FIELD,
        Company : COMPANY_FIELD,
        Status : STATUS_FIELD
    };
    recordId='00Q8d00000EixrbEAB';

    successHandler(){
        const event = new ShowToastEvent(
            {
                title:"Success",
                message:"Record saved successfully",
                variant:"Succes"
            }
        );
        this.dispatchEvent(event);
    }
    errorHandler(){
        const event= new ShowToastEvent({
            title:"Error",
            message: "Fix the error",variant:"Error"
        });
        this.dispatchEvent(event);
    
    }

}