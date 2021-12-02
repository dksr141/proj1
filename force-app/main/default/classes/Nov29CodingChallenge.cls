public class Nov29CodingChallenge {
    public static List<Contact> stripInaccessibleMethod() {
        List<Contact> contactList;
        try{
        	contactList = [SELECT Name, Title, Email, Phone, Account.Name FROM Contact WITH SECURITY_ENFORCED];
        }
        catch(QueryException e){
            System.debug(e);
        }
        if(contactList != null){
            return contactList;
        }
        return null;
    }
    
    public static List<Contact> withSecurityEnforcedClause() {
        List<Contact> contactList = [SELECT Name, Title, Email, Phone, Account.Name FROM Contact];
        SObjectAccessDecision securityDecision = Security.stripInaccessible(AccessType.READABLE, contactList);
        return securityDecision.getRecords();
    }
    
    public static List<Contact> schemaNamespaceClasses() {
        String query = 'SELECT ';
        if(!Schema.SObjectType.Contact.isAccessible()){
            return null;
        }        
        query = runFields(query);
        query += ' From Contact';
        List<Contact> contactList = Database.query(query);
        return contactList;
    }  
    
    public static String runFields(String query){
        if(Schema.sObjectType.Contact.fields.Name.isAccessible()){
            query += 'Name';
        }
        
        if(Schema.sObjectType.Contact.fields.Title.isAccessible()){
            query += ', Title';
        }
        
        if(Schema.sObjectType.Contact.fields.Email.isAccessible()){
            query += ', Email';
        }
        
        if(Schema.sObjectType.Contact.fields.Phone.isAccessible()){
            query += ', Phone';
        }
        
        if(Schema.sObjectType.Account.fields.Name.isAccessible()){
            query += ', Account.Name';
        }
        return query;
    }
}