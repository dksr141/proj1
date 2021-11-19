trigger campaignCheck on Campaign (before insert, before update) {
    if(Trigger.isUpdate){
        for(Campaign c : Trigger.New){
            if(campaignManager.checkTheUpdate(c) == false){
                c.addError('There has been a problem with your Insert!');
            }
        }
    }
    if(Trigger.isInsert)
    {
        for(Campaign c : Trigger.New){
            if(!campaignManager.checkTheInsert(c) == false){
                c.addError('There has been a problem with your Insert!');
            }
        }
        
    }
}