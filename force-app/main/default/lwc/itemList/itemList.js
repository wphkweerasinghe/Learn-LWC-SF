import { LightningElement, wire } from 'lwc';
// Access getItem method
import getItems from '@salesforce/apex/ItemController.getItems';
// Import static picture from salesforce static resource
//import sample_pic from '@salesforce/resourceUrl/sampleItemPicture';

export default class ItemList extends LightningElement {
    // Local variables
    items;
    // item_pic = sample_pic;
    @wire(getItems)
    wiredItems({ error, data }) {
        if (data) {
            // If there are no errors data stored in local variable
            this.items = data;
        } else if (error) {
            // If there are error, errors are show in console
            console.error(error);
        }
    }
}
