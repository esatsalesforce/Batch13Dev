RankHandler rh = new RankHandler();
string p1 = rh.rankPrize(1);
system.debug('p1 is '+p1);
string p2=rh.rankPrize(2);
system.debug('p2 is '+p2);
string p3 = rh.rankPrize(3);
system.debug('p3 is '+p3);
string p10 =rh.rankPrize(10);
system.debug('p10 is '+p10);
string p11=rh.rankPrize(111);
system.debug('p11 is '+p11);

string a=rh.tearnyTest();
system.debug(a);

RankHandler rh2 = new RankHandler();
string ps1 =rh2.rankPriceSwitch(1);
system.debug('ps1 is '+ ps1);
string ps2 =rh2.rankPriceSwitch(2);
system.debug('ps2 is '+ps2);
string ps3 = rh2.rankPriceSwitch(3);
system.debug('ps3 is '+ps3);
string ps5=rh2.rankPriceSwitch(5);
system.debug('ps5 is '+ps5);
string ps11=rh2.rankPriceSwitch(11);
system.debug('ps11 is '+ps11);