trigger Trigger3 on Opportunity (After insert) {

	if(Tclass.flag1==true)
	{
		Tclass.flag1=false;
		List<Opportunity> l1=new List<Opportunity>();
    	for(Opportunity o:trigger.new)
    	{
    		l1.add(o);
    	}
    	Tclass.createClone(l1);
	}
}