function formValidation()
{
var ufname=document.registration.fname;
var ulname=document.registration.lname;
var ucontact=document.registration.contact;
var uaddress=document.registration.address;
var ustate=document.registration.state;
var ucity=document.registration.city;

var upassword=document.registration.password;
var upassword1=document.registration.password1;
 
if(fname_validation(ufname))
	{
	if(lname_validation(ulname))
		{
		if(allnumeric(ucontact))
		{
			if(address_validation(uaddress))
			{
				if(state_validation(ustate))
				{
					if(city_validation(ucity))
					{
					
							if(password_validation(upassword,7,12))
							{
								if(password1_validation(upassword1,7,12))
								{
									return true;
								}
								
							
							
						}
						
					}
					
				}
			}
		}
		}
	}

return false;
}

function fname_validation(ufname)
{
	var letter=/^[a-zA-Z]+$/;
	if(!ufname.value.match(letter))
		{
		alert("First Name must be alphabetic character only");
	ufname.focus();
	return false;
		}
	else
		{
		return true;
		}
	}

function lname_validation(ulname)
{
	
	var letter=/^[a-zA-Z]+$/;
	if(!ulname.value.match(letter))
		{
		alert("Last Name must be alphabetic character only");
		
		ulname.focus();
		return false;
		}
	else
		{
		return true;
		}
}
function allnumeric(ucontact)
{
var contact_len=ucontact.value.length;
if(contact_len==10)
	{
	var number=/^[0-9]+$/;
	if(ucontact.value.match(number))
		{
		return true;
		}
	else
		{
		
		alert("contact must have numeric digit only");
		
		ucontact.focus();
		return false;
		}
	
	}
else
	{
	alert("Contact length must be 10 digit");
	
	ucontact.focus();
	return false;
	
	}
}
function address_validation(uaddress)
{
var letter=/^[a-zA-Z0-9\-]+$/;
if(uaddress.value.match(letter))
	{
	return true;
	}
else
	{
	alert("Please enter the valid address");
	
	uaddress.focus();
	return false;
	}

}
function state_validation(ustate)
{
if(ustate.value=="default")
	{
	alert("select a state from the list");
	ustate.focus();
	return false;
	}
else
	{
	return true;
	}
}

function city_validation(ucity)
{
	if(ucity.value=="Default")
	{
	alert("select a city from the list");
	ucity.focus();
	return false;
	}
else
	{
	return true;
	}	

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

function password1_validation(upassword1,mx,my)
{
	var password_len=upassword1.value.length;
	if(password_len==0||password_len<mx||password_len>my)
		{
		alert("confirm password must be between"+mx+"to"+my);
		upassword1.focus();
		return false;
		}
	else
		{
		return true;
		}	
}




