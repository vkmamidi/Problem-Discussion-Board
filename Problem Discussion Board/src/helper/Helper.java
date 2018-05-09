package helper;

public class Helper {

	public static boolean checkCaptcha(String captcha, String code) {
		String newCap[]=captcha.split(" ");
		String str="";
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
