public class AccAddTrig {
    public static void trigN(List<Account> newAcc) {
        List<Account> newC = new List<Account>();
        for(Account a: newAcc) {
            if(a.Match_Billing_Address__c) {
                a.ShippingPostalCode = a.BillingPostalCode;
            }
            newC.add(a);
        }
        //database.update(newC);
    }
}