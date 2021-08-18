/*********************************************************************
* @author       Jose Ignacio Cardenas Maya
* @description  Account Naming Trigger For Inserting Records
* @date         2021-08-18
* @group        Record Trigger
**********************************************************************/

trigger AccountNamingTrigger on Account (before insert) {
    for(Account a : Trigger.New) {
        a.Name = a.Name + '_Test';
}
}