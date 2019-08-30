trigger AccountAddressTrigger on Account (before insert, before update) {
    if(Trigger.isBefore) {
        AccAddTrig.trigN(Trigger.new);
    }
}