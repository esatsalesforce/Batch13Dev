public with sharing class RestPostCallout {
    public static HttpResponse postPost(){
        //1. Prepare HttpRequest with body
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://gorest.co.in/public/v2/posts');
            request.setMethod('POST');
            //1.a. Set header based on the body type
            posts_c pst =[select User_ID_c, Title__c, Body__c from Posts__c where CreatedDate = TODAY limit 1];

            PostWrapper wps = new PostWrapper();
            wps.user_id= integer.valueOf(pst.User_ID___c);
            wps.title=pst.Title__c;
            wps.body= pst.Body__c;

            request.setHeader('Content-Type', 'application/json:charset=UTF-8');
            request.setHeader('Authorization','Bearer 0df450465d9dfcc396b1131afdc537e9600a2e937ff4dde5495853fa41e1da53');
            
            String jsonBody = JSON.serialize(ew);
    
            //1.b Set body for request
            request.setBody(jsonBody);
    
            //2. Prepare Internet
            Http http = new Http();
    
            //3. Send request and handle response
            HttpResponse response = http.send(request);
    
            //4. Process HttpResponse
            System.debug(response.getStatusCode());
            if(response.getStatusCode() == 200){
                String jsonString = response.getBody();
                System.debug(jsonString);
    
                EmployeePostResponse epr = (EmployeePostResponse) JSON.deserialize(jsonString, EmployeePostResponse.class);
                System.debug(epr) ; 
                System.debug('Name : ' + epr.data.name); 
                System.debug('Username : ' + epr.data.username); 
                System.debug('Id : ' + epr.data.id); 
                System.debug('Designation : ' + epr.data.designation); 
                System.debug('Email : ' + epr.data.email); 
                System.debug('Phone : ' + epr.data.phone_number); 
            }
    
            return response;
}
}