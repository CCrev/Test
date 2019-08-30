@isTest
private class LeadProcessorTest {
    
    @testSetup
    static void setup() {
        List<Lead> l = new List<Lead>();
        for(Integer i=0; i<200; i++) {
            l.add(new Lead(LeadSource='Lead '+i,
                          LastName = 'Name '+i, Company = 'Company'));
        }
    insert l;
    }
    
    static testmethod void test() {
        Test.startTest();
        LeadProcessor tL = new LeadProcessor();
		Database.executeBatch(tL);        
        Test.stopTest();
        
        System.assertEquals(200, [Select count() From Lead Where LeadSource = 'DreamForce']);
        //testing extra: checking if first que back is dreamforce in leadsource
        List<Lead> lQue = [Select LeadSource From Lead];
        System.assertEquals('Dreamforce', lQue[0].LeadSource);
    }
    
}