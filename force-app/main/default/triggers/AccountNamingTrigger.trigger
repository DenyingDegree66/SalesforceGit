trigger AccountNamingTrigger on Account (before insert) {
    for(Account a : Trigger.New) {
        a.Name = Name + '_Test';
}