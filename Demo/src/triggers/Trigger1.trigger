trigger Trigger1 on Opportunity (after Update) {

		for(Opportunity o:Trigger.new)
		{
			System.debug('In New');
			system.debug(o);
		}
		for(Opportunity o:Trigger.old)
		{
			System.debug('In Old');
			system.debug(o);
		}
		for(Opportunity o:Trigger.newMap.values())
		{
			System.debug('In Newmap');
			system.debug(o);
		}
		for(Opportunity o:Trigger.oldMap.values())
		{
			System.debug('in Oldmap');
			system.debug(o);
		}
	
}
