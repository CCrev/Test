public class AccountHandler {

    public static void dohdoh(List<Account> news){
        for(Account a: news){
            if(a.type == NULL || a.type == ''){
                a.type = 'Other';
            }
            if(a.NumberOfEmployees > 0 && a.NumberOfEmployees < 5000){
                a.Size__c = 'Small';
            }
            else if(a.NumberOfEmployees > 5000 && a.NumberOfEmployees < 10000){
                a.Size__c = 'Medium';
            }
            else if(a.NumberOfEmployees > 10000){
                a.Size__c = 'Large';
            }
        }
    }
    
    public static void bobo(List<Account> news){
        for(Account a: news){
           if(a.NumberOfEmployees > 0 && a.NumberOfEmployees < 5000){
                a.Size__c = 'Small';
            }
            else if(a.NumberOfEmployees > 5000 && a.NumberOfEmployees < 10000){
                a.Size__c = 'Medium';
            }
            else if(a.NumberOfEmployees > 10000){
                a.Size__c = 'Large';
            }
        }
    }
}