/*********************************************************************
* @author       Jose Ignacio Cardenas Maya
* @description  Account Naming Trigger Handler For Inserting Records
* @date         2021-08-18
* @group        Record Trigger
**********************************************************************/
public with sharing class AccountNamingTriggerHandler{

/*********************************************************************
* @author       Jose Ignacio Cardenas Maya
* @date         2021-08-18
* @description  Account Naming Trigger Handler For Inserting Records
* @param        
**********************************************************************/
    public void accountNamingTriggerHandler(List<Account> Acc) {
        for (Account a : Acc){
        a.Name = a.Name + '_Test';
    }
    }
}
