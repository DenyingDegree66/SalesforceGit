/*********************************************************************
* @author       Jose Ignacio Cardenas Maya
* @description  Account Naming Trigger Handler For Inserting Records
* @date         2021-08-18
* @group        Record Trigger
**********************************************************************/
public virtual with sharing class Eco_AccountNamingTriggerHandler extends Eco_AbstractTriggerHandler
{
    private static Boolean ranOnce = false;
    
    public override void beforeInsert()
    {
        Eco_AccountNamingTriggerHandler_BeforeInsert((List<Account>) Trigger.New);
    }


/*********************************************************************
* @author       Jose Ignacio Cardenas Maya
* @date         2021-08-18
* @description  Account Naming Trigger Handler For BeforeInserting Records
* @param        
**********************************************************************/

public void Eco_AccountNamingTriggerHandler_BeforeInsert(List<Account> Acc) {
        for (Account a : Acc){
        a.Name = a.Name + '_Test';
    }
}
}