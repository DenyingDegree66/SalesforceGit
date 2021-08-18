/*********************************************************************
* @author       Jose Ignacio Cardenas Maya
* @description  Account Naming Trigger Handler For Inserting Records
* @date         2021-08-18
* @group        Record Trigger
**********************************************************************/
public with sharing class AccountNamingTriggerHandler{
    public void AccountNamingTriggerHandler(List<Account> Acc) {
        for (Account a : Acc){
        a.Name = a.Name + '_Test';
    }
    }
}
