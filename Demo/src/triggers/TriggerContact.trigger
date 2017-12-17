trigger TriggerContact on Contact (after insert) {
    
	List<Contact>l1=new List<Contact>();
	for(Contact c:trigger.new)
	{
		l1.add(c);
	}
	
}