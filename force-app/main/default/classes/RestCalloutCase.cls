public with sharing class RestCalloutCase {
    public static HttpResponse getCase(){
        //1. Prepare Http Request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:NC_OrgIntegration5/services/apexrest/Case/5008d00000LdfNgAAJ');
        request.setMethod('GET');

        //2.Prepare Internet
        Http http = new Http();

        //3. Send HttpRequest over internet 
        HttpResponse response = http.send(request);

        //4. Process Httpresponse
        if(response.getStatusCode() == 200){
            System.debug(response.getStatus());
            System.debug('JSON Format : ' + response.getBody());
            String body = response.getBody();
            Case cs = (Case)JSON.deserialize(body, Case.class);
            System.debug ('Case Object : ' + cs);
        }
        return response;
    }
}