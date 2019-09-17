global with sharing class ApexBatchEx implements Database.Batchable<sObject> {
    
    global Database.QueryLocator start(Database.BatchableContext BC) {
        String query = 'Select id, phone From Contact';
        return database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, list<Contact> conList) {
        for(Contact cc: conList) {
            cc.Phone = '1111111111';
        }
        update conList;
    }
    
    global void finish(Database.BatchableContext BC) {
        
    }
}