trigger AccountTrigger on Account (before insert, before update) {
    if(Trigger.isBefore && Trigger.isInsert){
        AccountHandler.dohdoh(Trigger.new);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        AccountHandler.bobo(Trigger.new);
    }
}