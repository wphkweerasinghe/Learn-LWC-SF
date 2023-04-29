public with sharing class ItemController {
    @AuraEnabled(cacheable=true) 
    // Its allowed to use @wire apex method.
    public static List<Item__c> getItems() {
        // getItems method return List of Item records.
        return [
                SELECT 
                    Name, 
                    Price__c, 
                    Quantity__c, 
                    Model__c, 
                    Brand__c,
                    Product_Image__c
                FROM Item__c 
                WITH SECURITY_ENFORCED
            ];
    }
}
