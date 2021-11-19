public class ContactController {
    @AuraEnabled (cacheable = true)
    public static List<Contact> getContacts(){
            
            List<Contact> someContacts = [SELECT ID, FirstName, LastName, Email FROM Contact];
                
          

            return someContacts;
        }
}
