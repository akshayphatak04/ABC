public class Myclass3 {
    /*
     * method is for performing operations on string
	*/
    public void stringOperations(String str)
    {
      	str=str.replace('@','A');
       	System.debug(str);
       	System.debug( str.substring(11));
        system.debug(str.split(''));
        System.debug(str.replace(' ', ''));
        System.debug(str.toUpperCase());
        System.debug(str.toLowerCase());
    }
    public void Occurence(String str1)
    {
    }
}