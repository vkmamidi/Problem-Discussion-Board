function formValidation()
{

var uemail=document.login.username;
var upassword=document.login.password;

 

						if(email_validation(uemail))
						{
							if(password_validation(upassword,7,12))
							{
							
									return true;
								}
								
							}
							

return false;
}


function email_validation(uemail)
{
var letter=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/; 
if(uemail.value.match(letter))
{
return true;
}
else
	{
	alert("please enter the valid emailid");
	uemail.focus();
	return false;
	
	}
}
function password_validation(upassword,mx,my)
{
var password_len=upassword.value.length;
if(password_len==0||password_len<mx||password_len>my)
	{
	alert("password must be between"+mx+"to"+my);
	upassword.focus();
	return false;
	}
else
	{
	return true;
	}

}
