public class Demo 
{
	 Integer i,fnum=0,snum=1,next;
    /*
     *	method is for printing the febonacci series
     *	@param is of Integer type	
	 *	Return type NA
	*/
    public void printSeries(Integer x)
    {
     	for(i=0;i<x;i++)
        {
            System.debug(fnum);
            next=fnum+snum;
            fnum=snum;
            snum=next;
        }
    }
}
/*
 * Demo d=new Demo();
   d.printSeries(5);
*/