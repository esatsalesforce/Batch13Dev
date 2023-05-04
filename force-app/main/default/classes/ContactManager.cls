//Endpoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case/
@RestResource(urlMapping = '/Contact/*')
global with sharing class ContactManager {
    
    /**
        *  This method is exposing Case record by their Salesforce Id
        * Endpoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case/5008d00000Jey96AAB
        * Http Method : GET
    */
    @HttpGet
    global static Contact getContactById(){
        //grab the caseId from the end of the URL
        RestRequest request = RestContext.request;
        String uri = request.requestURI;

        Integer lastIndex = uri.lastIndexOf('/'); //to find the index of last "/" character
        Id contactId = uri.substring(lastIndex+1);

        Contact cs = [SELECT Id, FirstName, LastName, Title, Email, Department
                   FROM Contact
                   WHERE Id =: contactId];
        return cs;
    }

    /*   This method will create a new case record. 
    * We need a body part in JSON format
    * Endpoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case
    * Http Method: Post - @HttpPost
    * Return : Case Id
    */
    @HttpPost
    global static Id postContact(String Id, String FirstName, String LastName, String Title,string Email,String Department){
        // 1. Get Incoming REST Callout request context
        Contact cs = new Contact();
        cs.FirstName = FirstName;
        cs.LastName = LastName;
        cs.Email = Email;
        cs.Title = Title;
        cs.Department= Department;
        insert cs;

        return cs.id;
    }

    // EndPoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case
    // Http Method: Update - @HttpPatch
    @HttpPatch
    global static Contact patchCase(){
        RestRequest request = RestContext.request;
        String body = request.requestBody.toString();

        Contact cs = (Contact) JSON.deserialize(body, Contact.class);

        update cs;

        return cs;
    }

    // EndPoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case
    // Http Method: Upsert - @HttpPut
    @HttpPut
    global static Id putContact(String Id, String FirstName, String LastName, String Title,String Email,String Department){
        Contact cs = new Contact();
        cs.Id = Id;
        cs.FirstName = FirstName;
        cs.LastName = LastName;
        cs.Email = Email;
        cs.Title = Title;
        cs.Department= Department;
        upsert cs;
        return cs.Id;
    }

    // EndPoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case/5008d00000Jey96AAB
    // Http Method:@HttpDelete
    @HttpDelete
    global static String deleteContact(){
        // To handle Case Id
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        Id contactId = uri.substringAfterLast('/');
        // Delete Case Record

            Contact cnt = [SELECT Id FROM Contact WHERE Id = : contactId];
            delete cnt;

            return 'Deleted';

    }
}