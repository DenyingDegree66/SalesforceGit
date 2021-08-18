/*********************************************************************
* @author       Jose Ignacio Cardenas Maya
* @description  Account Naming Trigger For Inserting Records
* @date         2021-08-18
* @group        Record Trigger
**********************************************************************/

trigger AccountNamingTrigger on Account (before insert)  {
    AccountNamingTriggerHandler AccHandler = new AccountNamingTriggerHandler();
    
    if(Trigger.isBefore){
        AccHandler.AccountNamingTriggerHandler(Trigger.New);
             }
    
}
