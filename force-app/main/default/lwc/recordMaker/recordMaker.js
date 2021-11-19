import { LightningElement } from 'lwc';

//import ACCOUNT_ID from '@salesforce/account/Id';
import ACCOUNT_NAME from '@salesforce/schema/Opportunity.Name';
import ACCOUNT_TYPE from '@salesforce/schema/Opportunity.Type';
import ACCOUNT_OWNER from '@salesforce/schema/Opportunity.OwnerId';

export default class RecordForm extends LightningElement {

    selectedFields = [ACCOUNT_NAME, ACCOUNT_TYPE, ACCOUNT_OWNER];
}