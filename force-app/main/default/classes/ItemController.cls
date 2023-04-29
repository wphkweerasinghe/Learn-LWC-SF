public with sharing class ItemController {
    @AuraEnabled(cacheable=true) 
    // Its allowed to use @wire apex method.
    public static List<Item__c> getItems() {
        // getItems method return List of Item records.
        try {
            return [
                SELECT 
                    Name, 
                    Price__c, 
                    Quantity__c, 
                    Model__c, 
                    Brand__c 
                FROM Item__c ];
        } catch (Exception msg) {
            // If there are error, when retrieve data from DB this line will be helpful for debug it. 
            System.debug(msg.getMessage());
        }
    }
}
