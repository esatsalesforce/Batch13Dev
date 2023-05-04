//JSON Format
{
    'Name':'Esat',
    'Age':39,
    'Title':'Developer',
    'Salary':120000
    'Address':{
        'City':'New York',
        'Country':'USA'
    }
}

//XML Format
<Contact>
    <Name>Esat</Name>
    <Age> 30 </Age>
    <Title> Developer</Title>
</Contact>

Account acc = [select Name, type, Industry, AnnualRevenue from Account Where AnnualRevenue != null And Industry !=null and Type !=null Limit 1];

String jsonString = JSON.serialize(acc);
system.debug(jsonString);

list<Account> acclist = [select Name, type, Industry, AnnualRevenue from Account Where AnnualRevenue != null And Industry !=null and Type !=null ];

string jsonListString = JSON.serialize(acclist);
system.debug(jsonListString);
