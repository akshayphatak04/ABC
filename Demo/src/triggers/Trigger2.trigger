trigger Trigger2 on Opportunity (after delete, after insert, after undelete, after update, before delete, before insert, before update) {
	
	if(Trigger.isBefore)
	{
		if(trigger.isInsert)
		{
			for(Opportunity o:trigger.new)
			{
				System.debug('I am in Before insert new');
				System.debug(o);
			}
		}
		if(trigger.isDelete)
		{
			for(Opportunity o:trigger.oldmap.values())
			{
				System.debug('I am in Before delete oldmap');
				System.debug(o);
			}
			for(Opportunity o:trigger.old)
			{
				System.debug('I am in Before delete old');
				System.debug(o);
			}
		}
		if(trigger.isUpdate)
		{
			
			for(Opportunity o:trigger.oldmap.values())
			{
				System.debug('I am in Before Update oldmap');
				System.debug(o);
			}
				for(Opportunity o:trigger.old)
			{
				System.debug('I am in Before Update old');
				System.debug(o);
			}
			for(Opportunity o:trigger.new)
			{
				System.debug('I am in Before Update new');
				System.debug(o);
			}
			for(Opportunity o:trigger.newmap.values())
			{
				System.debug('I am in Before Update newmap');
				System.debug(o);
			}
		}
	}
	else
	{
		if(trigger.isInsert)
		{
			for(Opportunity o:trigger.new)
			{
				System.debug('I am in After insert new');
				System.debug(o);
			}
			for(Opportunity o:trigger.newMap.values())
			{
				System.debug('I am in After insert newmap');
				System.debug(o);
			}
		}
		if(trigger.isDelete)
		{
			for(Opportunity o:trigger.oldmap.values())
			{
				System.debug('I am in After delete oldmap');
				System.debug(o);
			}
			for(Opportunity o:trigger.old)
			{
				System.debug('I am in After delete old');
				System.debug(o);
			}
		}
		if(trigger.isUpdate)
		{
			
			for(Opportunity o:trigger.oldmap.values())
			{
				System.debug('I am in After update oldmap');
				System.debug(o);
			}
				for(Opportunity o:trigger.old)
			{
				System.debug('I am in After update old');
				System.debug(o);
			}
			for(Opportunity o:trigger.new)
			{
				System.debug('I am in After update new');
				System.debug(o);
			}
			for(Opportunity o:trigger.newmap.values())
			{
				System.debug('I am in After update newmap');
				System.debug(o);
			}
		}
		
	}
}
	

