package controller;

public class Helper {
public static boolean checkcaptcha(String captcha,String code)
{
	String str="";
	String newCap[]=captcha.split(" ");
	boolean status=false;
	for(int i=0;i<newCap.length;i++)
	{
		str=str+newCap[i];
		
	}
	if(str!=null&&code!=null)
	{
		if(str.equals(code))
		{
			status=true;
		}
		else
		{
			status=false;
		}
	}
	return status;
	
}
}
