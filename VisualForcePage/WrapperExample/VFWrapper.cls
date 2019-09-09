public class VFWrapper {
    
    public list<wrapper> wrapL {get;set;}
    
    public VFWrapper () {
        wrapL = new list<wrapper>();
        for(Account theAccount: [Select id, name, billingstate From Account]) {
            wrapper newWrapper = new wrapper();
            newWrapper.thisAccount = theAccount;
            newWrapper.selected = false;
            wrapL.add(newWrapper);
        }
    }
    
    public void changeBill() {
        list<Account> acc = new list<Account>();
        
        for(wrapper thisWrapper: wrapL) {
            if(thisWrapper.selected) {
                thisWrapper.selected = false;
                Account accUp = thisWrapper.thisAccount;
                accUp.BillingState = 'VA';
                acc.add(accUp);
            }
        }
        update acc;
    }
    
    public class wrapper {
        public Account thisAccount{get;set;}
        public Boolean selected{get;set;}
    }
}