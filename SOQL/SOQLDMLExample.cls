public class SOQLDMLExample {
    
	private List<Contact> contactList = [Select lastname, firstname, id, email, phone, OwnerID, account.phone
                                     From Contact
                                     Where email = null OR phone = null
                                     LIMIT 1];
    
    public void dataCompletenessCheck() {
     List<Contact> updateList = new List<Contact>();
        List<Task> insertTaskList = new List<Task>();
        for(Contact c : contactList) {
            if(c.email == null) {
                insertTaskList.Add(newTask);
                updatePhone(c);
                updateList.add(c);
            }else if(c.phone == null) {
                if(c.account.phone == null) {
                    insertTaskList(createTask(c));
                }else{
                    updatePhone(c);
                    updateList.add(c);
                   //c.phone = c.account.phone; 
                }
            } else if (c.Email == null) {
                insertTaskList.Add(createTask(c));
            }
            Savepoint sp = database.SetSavepoint();
            insert insertTaskList;
            database.update(updateList,false);
            database.rollback(sp);
        }
    }
    
    private task createTask(Contact c) {
        Task newTask = new Task();
        newTask.subject = 'Acquired contact email';
        newTask.OwnerID = c.OwnerID;
        newTask.WhoID = c.Id;
        return newTask;
    }
    
    private Contact updatePhone(Contact c) {
        c.phone = c.account.phone;
        return c;
    }
}