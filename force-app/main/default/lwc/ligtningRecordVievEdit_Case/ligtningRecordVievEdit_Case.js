import { LightningElement } from 'lwc';

import CASE_OBJ from '@salesforce/schema/Case';

import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import STATUS_FIELD from '@salesforce/schema/Case.Status';
import CASEORIGIN_FIELD from '@salesforce/schema/Case.Origin';
export default class LigtningRecordVievEdit_Case extends LightningElement {
    objName = CASE_OBJ;
    fields = {
    Subject : SUBJECT_FIELD,
    Status : STATUS_FIELD,
    CaseOrigin : CASEORIGIN_FIELD,
 };
 recordId = "5008d00000DpwmJAAR";
}