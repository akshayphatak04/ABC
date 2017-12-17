public with sharing class Tclass {
   
  	public static Boolean flag1=true; 
  	public static Boolean flag2=true; 
    public static void createClone(List<Opportunity> l2)
    {
    	
    	id i;
    	System.debug('I am in createClone');
    	for(Opportunity o:l2)
    	{
    		 i=o.id;
    	}
    	Opportunity o1=new Opportunity();
    	Opportunity o2=new Opportunity();
    	o1=[Select id,name,StageName,closedate from Opportunity where id=:i];
    	o2=o1.clone();
    	System.debug('This is original');
    	System.debug(o1);
    	System.debug('This is clone');
    	System.debug(o2);
    	System.debug('I am at End');
    	insert o2;
    	
    }
    
    Public static void createCase(list<SalesHeader__c> l2)
    {
    	System.debug('I am in create case');
    	list<case> c=new list<case>();
    	case c1=new case();
    	System.debug(l2);
    	System.debug('For loop will start');
   		for(SalesHeader__c s:l2)
    	{
    		System.debug('I am in for');
  			if(s.status__c=='open'&&s.pick_status__c=='open'&&s.Total_Amount__c>300)
    		{
    			System.debug('I am in outer if');
    			if(s.bill_to_city__c!=s.ship_to_city__c || s.billing_to_state__c!=s.ship_to_state__c||s.bill_to_street__c!=s.ship_to_street__c||s.bill_to_postal_code__c!=s.ship_to_postal_code__c)
    			{
    				System.debug('I am in inner if');
    				c1.priority='medium';
    				c1.Account.name=s.bill_to_customer__c;
    				//c1.Contact.name=s.bill_to_customer__c;
    				//c1.recordtype='Assignment';
    				c1.origin='Internal';
    				//c1.Owner.name='Unable To cross Ship Queue';
    				c1.Reason='Unable to cross ship';
    				c1.Type='Unable to cross Ship';
    				c1.Subject=Account.Name+' aaa '+c1.type;
    				c1.Open_sales_order__c=s.id;
    				c1.transaction_status__c=s.transaction_status__c;
    				c1.sales_order__c=s.name;
    				c1.order_date__c=s.transaction_date__c;
    			}	
    		}
    	}
    	System.debug('Add List of case');
    	insert c1;
    	System.debug(c1);
		System.debug('Record Id: '+c1.id);
		}
		
	public static void updatefield(List<CampaignMember> l2)
	{
		for(CampaignMember c:l2)
		{
			if(c.Type=='lead')
			{
					
			}
		}
	}
	
	public static void ContactUpdate()
	{
		
	}
 }