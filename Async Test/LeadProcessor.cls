global class LeadProcessor implements Database.Batchable<sObject> {
    
    global Integer rec = 0;
    
    global Database.QueryLocator start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
        return Database.getQueryLocator(
            'Select LeadSource, LastName, Company From Lead'
        );
    }
    
    global void execute(Database.BatchableContext bc, List<Lead> ll){
        // process each batch of records
        List<Lead> nLead = new List<Lead>();
        for(Lead l: ll) {
            l.LeadSource = 'Dreamforce';
            nLead.add(l);
            rec = rec + 1;
        }
        update nLead;
    }
    
    global void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }
    
}