trigger Trigger4 on SalesHeader__c (after insert, after update) {

if(Tclass.flag2==true)
	{
		Tclass.flag2=false;	
		list<Salesheader__c> l1=new List<Salesheader__c>();
		for(Salesheader__c s:trigger.new)
		{
			l1.add(s);
		}
		System.debug('(In Trigger)List Contains: '+l1);
		Tclass.createCase(l1);
	}
}