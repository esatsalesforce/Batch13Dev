List<Lead> listLead=new List<Lead>();
lead ld1=new lead();
ld1.Lastname='trg lead 1';
ld1.company='salesforce';
listLead.add(ld1);

lead ld2=new lead();
ld2.LastName = 'trg lead 2';
ld2.company='salesforce';
listLead.add(ld2);

lead ld3=new lead();
ld3.LastName = 'trg lead 3';
ld3.company='salesforce';
listLead.add(ld3);

lead ld4=new lead();
ld4.LastName = 'trg lead 4';
ld4.company='salesforce';
listLead.add(ld4);

lead ld5=new lead();
ld5.LastName = 'trg lead 5';
ld5.company='salesforce';
listLead.add(ld5);

insert listLead;
