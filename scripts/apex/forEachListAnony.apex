List<string> listStr = new List<string>();
listStr.add('sounds good');
listStr.add('ok');
listStr.add('method');
listStr.add('clear');

string concateStr= '';
for(String eachStr:listStr){
    system.debug(eachStr);
    concateStr+='||'+eachStr;
}
system.debug(concateStr);