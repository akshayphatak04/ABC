public class Myclass6 {
	
    public void printallRecords()
    {
        list<Contact> l1=new list<Contact>();
        l1=[Select ID,name from contact];
        //System.debug('I am ouside for');
        for(Contact c:l1)
        {
            //System.debug('I am inside for');
            System.debug(c.ID);
            System.debug(c.name);
        }
    }
    public void printallrecords1()
    {
    	list<Account> l2=new list<Account>();
    	l2=[select id,name,(select id,name from Contacts) from Account];
    	for(Account a:l2)
    	{
    		System.debug(a.id);
    		System.debug(a.name);
    		for(Contact c:a.Contacts)
    		{
    			System.debug('Contact ID: '+c.id);
    			System.debug('Contact Name: '+c.name);
    		}
    	}
    }
    public void createrecords()
    {
    	/*Account a=new Account(name='hhh');
    	insert a;
    	Contact c=new Contact(Lastname='fatak');
    	insert c;
    	Lead l=new Lead(Lastname='torm',Company='ggg',status='Closed-Converted ');
    	insert l;*/
    	Opportunity o=new Opportunity(name='jitendra',Closedate=date.parse('12/20/2018'),StageName='Closed won');
    	insert o;
    }
    public void Showrel()
    {
    	list<Account> l2=new list<Account>();
    	l2=[select id,name,(select id,name from Contacts) from Account];
    	for(Account a:l2)
    	{
    		System.debug(a.id);
    		System.debug(a.name);
    		for(Contact c:a.Contacts)
    		{
    			System.debug('Contact ID: '+c.id);
    			System.debug('Contact Name: '+c.name);
    		}
    	}
    		
    }
    public void userrecord()
   	{
   		map<Id,User> m1=new map<Id,User>();
   		for(User u :[Select id,name from User where IsActive=true])
   		{
   			m1.put(u.id,u);
   			System.debug(m1.get(u.id));
   		}
   	}
    public void createMap()
    {
     	map<string,id> m12=new map<string,id>();
        map<id,Account> m13=new map<id,account>();
        for(Account a:[select id,name from account])
        {
 			m12.put(a.name,a.id);
            m13.put(a.id,a);
        }
	}
}