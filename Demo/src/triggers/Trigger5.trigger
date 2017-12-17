trigger Trigger5 on CampaignMember (after insert) {
    
    list<CampaignMember> l1=new List<CampaignMember>();
    for(CampaignMember c:trigger.new)
    {
    	l1.add(c);
    }
   //Tclass.Updatefield(l1);
}