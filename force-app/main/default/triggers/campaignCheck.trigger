trigger campaignCheck on Campaign (before insert, before update) {
    if(Trigger.isUpdate){
        for(Campaign c : Trigger.New){
            campaignManager.checkTheUpdate(c);
        }
    }
    if(Trigger.isInsert)
    {
        for(Campaign c : Trigger.New){
            campaignManager.checkTheInsert(c);
        }
        
    }
}