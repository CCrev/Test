@isTest
private class DFactTest {
    
    @TestSetup static void CreateData(){
        list<account> accList = new list<account>();
        
        accList.add(new account(Name='Test',
                                Website='test@test.com' ,Phone = '1234567890', NumberOfEmployees=2, 
                                Type = 'Prospect', AnnualRevenue = 500000, Industry = 'Energy', 
                                OwnerShip='Public' ));
                accList.add(new account(Name='Test2',
                                Website='test@test.com' ,Phone = '1234567890', NumberOfEmployees=2, 
                                Type = Null, AnnualRevenue = 500000, Industry = 'Energy', 
                                OwnerShip='Public' ));
                accList.add(new account(Name='Test3',
                                Website='test@test.com' ,Phone = '1234567890', NumberOfEmployees=2, 
                                Type = 'Prospect', AnnualRevenue = 500000, Industry = 'Energy', 
                                OwnerShip='Public' ));
                accList.add(new account(Name='Test4',
                                Website='test@test.com' ,Phone = '1234567890', NumberOfEmployees=6000, 
                                Type = 'Prospect', AnnualRevenue = 500000, Industry = 'Energy', 
                                OwnerShip='Public' ));
                accList.add(new account(Name='Test5',
                                Website='test@test.com' ,Phone = '1234567890', NumberOfEmployees=600000, 
                                Type = 'Prospect', AnnualRevenue = 500000, Industry = 'Energy', 
                                OwnerShip='Public' ));
                accList.add(new account(Name='Test6',
                                Website='test@test.com' ,Phone = '1234567890', NumberOfEmployees=2, 
                                Type = 'Prospect', AnnualRevenue = 500000, Industry = 'Energy', 
                                OwnerShip='Public' ));
        
        database.insert(accList);
    }

    @isTest
    public static void oTest() {
        list<Account> nAc = [Select Type From Account Where name LIKE 'Test%'];
        System.assertEquals('Other', nAc[1].Type);
        
    }
    
    @isTest
    public static void wSize() {
        list<Account> nAcc = [Select name, NumberOfEmployees, size__c From Account Where name LIKE 'Test%']; 
        System.assertEquals('Small', nAcc[0].size__c);
        System.assertEquals('Small', nAcc[1].size__c);
        System.assertEquals('Small', nAcc[2].size__c);
        System.assertEquals('Medium', nAcc[3].size__c);
        System.assertEquals('Large', nAcc[4].size__c);
    }
    
    @isTest
    public static void uDaate() {
        List<Account> accUp = [Select id, name, NumberOfEmployees, size__c From Account where name LIKE 'Test%'];
        List<Account> theA = new List<Account>();
        for(Account a: accUp) {
            Account newAcc = new Account();
            newAcc.NumberOfEmployees = 1;
            newAcc.id = a.id;
            theA.add(newAcc);
        }
        database.update(theA);
        
        List<Account> accUp2 = [Select name, NumberOfEmployees, size__c From Account where name LIKE 'Test%'];
        System.assertEquals('Small', accUp2[0].size__c);
        System.assertEquals('Small', accUp2[1].size__c);
        System.assertEquals('Small', accUp2[2].size__c);
        System.assertEquals('Small', accUp2[3].size__c);
        System.assertEquals('Small', accUp2[4].size__c);
    }
}
