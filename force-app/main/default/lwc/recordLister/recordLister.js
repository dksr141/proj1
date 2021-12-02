import { LightningElement, wire } from 'lwc';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import getContacts from '@salesforce/apex/ContactController.getContacts';


const COLUMNS = [
    { label: 'Contact First Name', fieldname: FIRSTNAME_FIELD.fieldname, type: 'text'},
    { label: 'Contact Last Name', fieldname: LASTNAME_FIELD.fieldname, type: 'text'},
    { label: 'Contact Email', fieldname: EMAIL_FIELD.fieldname, type: 'email'},
]
    export default class recordLister extends LightningElement{
        errors;
        columns = COLUMNS;
        @wire(getContacts) contacts;

        get error(){
            return(this.contacts.error) 
           
        }
    }