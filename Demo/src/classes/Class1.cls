public with sharing class Class1 {
    List<contact> l1=new List<contact>();
    public void printall()
    {
    	l1=[Select id,name from Contact];
    	for(contact c:l1)
    	{
    		System.debug(c.name);
    		System.debug(c.Id);
    	}
    }
    public void printAcc()
    {
    	List<Account> l2=new List<Account>();
    	l2=[select id,name,billingstate from account where billingstate not in ('Maharashtra','Kerala') order by billingstate desc  limit 10000];
    	for(account c:l2)
    	{
    		System.debug(c.id);
    		System.debug(c.name);
    		System.debug(c.billingstate);
    	}
    }
    public void printopp()
    {
    	list<Opportunity> l3=new List<Opportunity>();
    	l3=[Select id,name,amount from opportunity where amount>10000 order by createddate offset 10];
    	for(opportunity o:l3)
    	{
    		System.debug(o.id);
    		System.debug(o.name);
    	}
    }
      public void displaystat()
    {
        //List<integer> l1=new List<integer>();
        //List<integer> l2=new List<integer>();
    	map<integer,AggregateResult> m1=new map<integer,AggregateResult>();
    	//AggregateResult[] groupedResults=[select SUM(Amount),FiscalYear from opportunity where stagename not  in ('closed win','closed lost') group by FiscalYear];
    	/*for(AggregateResult ar : groupedResults)
        {
            m1.put((integer)ar.get('FiscalYear'),ar.get('expr0'));
             //System.debug((integer)ar.get('FiscalYear'));
            	//System.debug(ar.get('expr0'));
        }*/
        for(AggregateResult o:[select SUM(Amount),FiscalYear from opportunity where stagename not  in ('closed win','closed lost') group by FiscalYear])
        {
            m1.put((integer)o.get('FiscalYear'),(AggregateResult)o.get('expr0'));
            m1.get((integer)o.get('FiscalYear'));
        }
		        
        /*AggregateResult[] groupedResults= [SELECT CampaignId, AVG(Amount)FROM Opportunity GROUP BY CampaignId];

		for (AggregateResult ar : groupedResults)  {

    	System.debug('Campaign ID' + ar.get('CampaignId'));

    	System.debug('Average amount' + ar.get('expr0'));

		}*/

    }
    public void DisplaydistLeads()
    {
    	List<AggregateResult> l1=new List<Aggregateresult>();
    	l1=[Select LeadSource,Count_distinct(id) from lead Group by Leadsource having Count_Distinct(id)>10];
    	for(AggregateResult r:l1)
    	{
    		System.debug(r.get('Leadsource'));
    		System.debug(r.get('expr0'));
    	}
   	}
   /* Aggregate Q3
   public void Countleads()
    {
    	//m=new map<String,integer>();
    	Map<string,map<String,AggregateResult>> m2=new Map<String,map<String,AggregateResult>>();
    	m2=[Select leadSource,Status,count(id) from lead group by Leadsource,status];
    	
    }*/
    
    
    /*Relationship Query*/
    /*Child To Parent*/
    Public void DisplayContact()
    {
    	List<Contact> l1=new List<Contact>();
    	l1=[Select id,name,Account.name from Contact where Account.Industry='Media'];
    	for(Contact c:l1)
    	{
    		System.debug('Contact Id:'+c.id);
    		System.debug('contact name: '+c.name);
    		System.debug('Account Name: '+c.Account.name);   		
    	}
    }
    Public void DisplayCrecords()
    {
    	List<C__c> lc=[Select id,name,A__r.name,B__r.name from C__c where name='John'];
    	for(C__c a:lc)
    	{
    		System.debug('nameC:'+a.name);
    		System.debug('nameA:'+a.A__r.name);
    		System.debug('nameB:'+a.B__r.name);
    	
    	}
    }
    /*Paren to child*/
    Public void DispalyAccRecords()
    {
    	List<Account> l1=new List<Account>();
    	 l1=[Select id,name,(Select id, name from Contacts where name like '%john%') from Account];
    	for(Account a:l1)
    	{
    		System.debug('Account id: '+a.id);
    		System.debug('Account name: '+a.name);
    		for(Contact c:a.Contacts)
    		{
    			System.debug('Contact id: '+c.id);
    			System.debug('Contact name: '+c.name);
    		}
    	}
    }
    public void DisplayRecordsO()
    {
    	List<Account> l1=new List<Account>();
    	l1=[Select id,name,(Select id,name from Opportunities where Stagename='Closed Won') from Account];
    	for(Account a:l1)
    	{
    		System.debug('Account name: '+a.name);
    		System.debug('Account id: '+a.id);
    		for(Opportunity o:a.Opportunities)
    		{
    			System.debug('Opportunity name: '+o.name);
    			System.debug('Opportunity id: '+o.id);
    		}
    	}
    }
    public void DisplayA_records()
    {
    	List<A__c>l1=new list<A__c>();
    	l1=[Select id,name,(Select id,name from C__r where name='john') from A__c];
    	for(A__c a:l1)
    	{
    		System.debug('Name A: '+a.name);
    		System.debug('Id A: '+a.id);
    		for(C__c c:a.C__r)
    		{
    			System.debug('Name C: '+c.name);
    			System.debug('Id C: '+c.id);
    			
    		}
    	}
    }
	    
}