global with sharing class SchedulableEx implements Schedulable {
    
    global void execute(SchedulableContext sc) {
        Account a = new Account();
        a.Name = 'New Account';
        insert a;
    }
    
    /* Execute in Anonymous Window
    SchedulableEx ascd = new SchedulableEx();
    String timetoexecute = '* * * * 12 6L 2019';
    String jobID = system.schedule('New Account', time, ascd);
    */
}