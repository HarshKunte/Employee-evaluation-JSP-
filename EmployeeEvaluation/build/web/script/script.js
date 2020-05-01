var lgt = document.getElementById('logout');
lgt.addEventListener("click",function logout(event)
	{
		event.preventDefault();
		if(confirm("Are you sure?"))
		{
			window.location = "HOME.html";
		}
	});


function cnf()
    {
        var x = confirm("Do you want to save changes?");
        if(x==true)
        {
            return true;
        }
        else
        {
            return false;
        }
    }        

function emp_det()
{
    var x1=document.forms["emp_form"]["fn"].value;
    var x2=document.forms["emp_form"]["ln"].value;
    var x3=document.forms["emp_form"]["dp"].value;
    var x4=document.forms["emp_form"]["ds"].value;
    var x5=document.forms["emp_form"]["pn1"].value;
    var x6=document.forms["emp_form"]["db"].value;
    var x7=document.forms["emp_form"]["dj"].value;
    var x8=document.forms["emp_form"]["em1"].value;
    if (x1==null || x1=="" || x2==null || x2=="" || x3==null || x3=="" || x4==null || x4=="" || x5==null || x5==""
         || x6==null || x6=="" || x7==null || x7=="" || x8==null || x8=="")
                {
            alert("Form must be filled out completely");
                return false;
                }
                else
                {return true;}


            
    
}

/*
    function phonenumber(inputtxt)  
            {  
              var phoneno = /^\d{10}$/;  
              if(inputtxt.value.match(phoneno))  
              {  
                  return true;  
              }  
              else  
              {  
                 alert("Not a valid Phone Number. Enter a 10 digit phone number");  
                 return false;  
              }  
            }  
*/
function unavilable()
{
  alert("Sorry! We are unavailable at this moment");
}