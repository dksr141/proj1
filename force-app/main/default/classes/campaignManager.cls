public class campaignManager {

    //just checks to make sure name isn't being used twice
    public static Boolean checkTheUpdate(Campaign newc){
        List<Campaign> results = [SELECT Name From Campaign WHERE Name =: newc.Name];
        if(results.size() == 0){
            return true;}
        else{
            return false;
        }
    }
    public static Boolean checkTheInsert(Campaign newc){
        List<Campaign> results = [SELECT Name From Campaign WHERE Name =: newc.Name];
        if(results.size() == 0){
            return true;}
        else{
            return false;
        }
    }
}