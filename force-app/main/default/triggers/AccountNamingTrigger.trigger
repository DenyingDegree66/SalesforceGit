/*********************************************************************
* @author       Jose Ignacio Cardenas Maya
* @description  Account Naming Trigger For Inserting Records
* @date         2021-08-18
* @group        Record Trigger
**********************************************************************/

trigger AccountNamingTrigger on Account (before insert)  {
    AccountNamingTriggerHandler accHandler = new AccountNamingTriggerHandler();

    if(Trigger.isInsert && Trigger.isBefore){
        accHandler.AccountNamingTriggerHandler(Trigger.New);
             }
    
}