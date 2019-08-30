public class COT {
    public static void taskk(List<Opportunity> newOpp) {
        List<Task> nTask = new List<Task>();
        for(Opportunity o: newOpp) {
            Task nT = new Task();
            if(o.StageName=='Closed Won') {
                nT.Subject = 'Follow Up Test Task';
                nT.WhatId = o.id;
                nTask.add(nT);
            }
        }
        database.insert(nTask);
    }
}