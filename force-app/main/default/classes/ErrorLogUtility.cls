public class ErrorLogUtility {

    public static void insertErrorLog(String processName, String logDetails) {
        Error_Log__c errorLog = new Error_Log__c();
        errorLog.Log_Date_Time__c = DateTime.now();
        errorLog.Log_Details__c = logDetails;
        errorLog.Process_Name__c = processName;
        insert errorLog;
    }
}