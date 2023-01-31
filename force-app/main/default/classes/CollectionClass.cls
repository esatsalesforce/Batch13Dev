public class CollectionClass {
    public static string listaAssignment(integer i){
        string output_month='';
        List<String> LstMonth = new List<String>();
        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');
        integer listSize = LstMonth.size();
        if (i>listSize){
            output_month='Not a valid month.';
        }else if(i<1) {
            output_month='This is not a valid month';
        }else{
             output_month=LstMonth[i-1];
        }
        return output_month;
    }
}