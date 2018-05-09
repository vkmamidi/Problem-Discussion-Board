function  regvalidate()
{
	
	var userid=document.reg.username;
	var userage=document.reg.age;
	var email=document.reg.email;
	var regid=/^[0-9A-Za-z]+$/;
	var regage=/^[0-9]+$/;
	var regemail=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; 
	
	if(useridValidation(userid,regid))
		{
		    if(userageValidation(userage,regage))
		    	{
		    	   if(emailValidation(email,regemail))
		    		   {
		    		       return true;
		    		   }
		    	  
		    	}
		   
		}
	

return false;
}

function useridValidation(userid,regid)
{
	
	if(userid.value.match(regid))  
	{  
	return true;  
	}  
	else  
	{  
	alert("You have entered an invalid UserID!");  
	userid.focus();  
	return false;  
	}
}
function userageValidation(userage,regage)
{
	if(userage.value.match(regage))  
	{  
	return true;  
	}  
	else  
	{  
	alert("You have entered an invalid UserAge!");  
	userage.focus();  
	return false;  
	}
}
function emailValidation(email,regemail)
{
	
	if(email.value.match(regemail))  
	{  
	return true;  
	}  
	else  
	{  
	alert("You have entered an invalid email address!");  
	email.focus();  
	return false;  
	}
}