public class Myclass2 {
		Integer i;
    	
    /* 
     * method is for to reverse the string
     * @param is of type String
     * Return type NA
	*/
    public void revString(String str)
    {
        String rev='';
   
       for(i=str.length()-1;i>=0;i--)
        {
         	rev=rev+str.substring(i,i+1);
        }
		System.debug(rev);
    }
    
    
}