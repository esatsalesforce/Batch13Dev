List<String> colorsList = new List<String>{'Red','Blue','Greeen', 'Yellow','Orange'};
system.debug('colors list is '+ colorsList);
system.debug('colors list is '+ colorsList.size());
system.debug('is there red color '+colorsList.contains('Red'));
system.debug(' last element uppercase '+ colorsList[colorsList.size()-1].touppercase());
system.debug('forth element uppercase '+ colorsList[3].toUpperCase());

List<String> colorCodeList = new List<String>{'FF0000','0000FF','00FF00', 'FFFF00','FFA500'};

Boolean A1 = colorsList.equals(colorCodeList);
List<String> mergedlist = new List<String>();
mergedlist.addAll(colorsList);
mergedlist.addAll(colorCodeList);
System.debug('Merged list: ' + mergedlist );

