try {
  account a =new account();
  a.Name='try catch acc';
    insert a;
} catch (DmlException dmlex) {
system.debug('dml went wrong buddy');
}catch(Exception ex){
    system.debug('something went wrong buddy');
}finally{
    system.debug('this will always run');
}
system.debug('Apex is simple');
