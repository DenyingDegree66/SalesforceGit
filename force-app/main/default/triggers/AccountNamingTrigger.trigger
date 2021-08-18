trigger AccountNamingTrigger on Account (before insert) {
    for(Account a : Trigger.New) {
        a.Name = a.Name + '_Test';
}
}