package helper;

public class PasswordGenerator {
	public String GeneratePassword()
	{
String password="";
String data="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
for(int i=0;i<8;i++)
{
char ch[]=data.toCharArray();	
int j=(int)((Math.random())*62);
password=password+ch[j];
}
return password;
}
}
