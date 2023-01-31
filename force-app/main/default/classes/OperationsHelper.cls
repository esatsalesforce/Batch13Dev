public class OperationsHelper {
    public static decimal sum(list < decimal> operation ) {
        if ( operation.isEmpty() ) {
            system.debug('Please provide values to da the operation');
            return null;

        } else{
            decimal result = 0;
            for ( Decimal eachSum: operation){
                 result +=eachSum;
            } 
       return result; 
        }  
    }
    public static decimal average (List<Decimal> operation){
        if ( operation.isEmpty()){
            system.debug('Please provide values to da the operation');
            return null;
        }else{
            decimal result = 0;
            for ( Decimal eachAverage: operation){
                 result +=eachAverage;
            } 
        return result/operation.size();  
        }
    }
    public static decimal highest(List<Decimal> operation){
        if ( operation.isEmpty()){
            system.debug('Please provide values to da the operation');
            return null;
        }else{
            decimal result = operation[0];
            for ( Decimal eachHighest: operation){
                if (eachHighest>result) {
                    result=eachHighest;                   
                }
            } 
        return result;            
        }
    }
    public static decimal lowest(List<Decimal> operation){
        if ( operation.isEmpty()){
            system.debug('Please provide values to da the operation');
            return null;
        }else{
            decimal result = operation[0];
            for ( Decimal eachLowest: operation){
                if (eachLowest<result) {
                    result=eachLowest;                   
                }
            } 
        return result;            
        }
    }
}
