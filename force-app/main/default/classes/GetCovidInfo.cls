public with sharing class GetCovidInfo {
    public static HttpResponse getCovidInfo() {
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.covidtracking.com/v1/us/current.json');
        request.setMethod('GET');

        Http http = new Http();

        HttpResponse response = http.send(request);

        if (response.getStatusCode() == 200) {
            String  jsonString = response.getBody();

            /*GetCovidInfoWrapper cvd = (GetCovidInfoWrapper) JSON.deserialize(jsonString, GetCovidInfoWrapper.class);*/

            List<GetCovidInfoWrapper> covidwrapperlist = (List<GetCovidInfoWrapper>)JSON.deserialize(jsonString, List<GetCovidInfoWrapper>.class);

            GetCovidInfoWrapper newInfo = covidwrapperlist[0]; 

            List<Covid_Info__c> covidList = new List<Covid_Info__c>();
            
            covidList = [SELECT States__c, Negative__c, Positive__c, Pending__c FROM Covid_Info__c WHERE Received_Date__c = TODAY];

            if (!covidList.isEmpty()) {
                covidList[0].Name = String.valueOf(newInfo.states);
                covidList[0].Negative__c = newInfo.negative;
                covidList[0].Positive__c = newInfo.positive;
                covidList[0].Pending__c = newInfo.pending;
                
                update covidList[0];
            
            } else {
                
                Covid_Info__c newCvd = new Covid_Info__c();
                newCvd.Name= String.valueOf(newInfo.states);
                newCvd.Negative__c = newInfo.negative;
                newCvd.Positive__c = newInfo.positive;
                newCvd.Pending__c = newInfo.pending;
                newCvd.Received_Date__c = Date.TODAY();
                insert newCvd;
            }
        }
        
        return response;
    }
}