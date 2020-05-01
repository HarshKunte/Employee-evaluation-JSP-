
<%-- 
    Document   : Login
    Created on : 23 Feb, 2019, 3:39:12 PM
    Author     : Harsh
--%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>


<%@page import="Connection.Config" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            html{
                scroll-behavior: smooth;
            }
            @font-face{
                src: url(Fonts/Montserrat/Montserrat-Regular.ttf);
                font-family: monty;
            }
            *{
                 font-family: monty;
                margin: 0;
                padding: 0;
            }
            
            .container1{
                position: relative;
                text-align: center;
                height: 100%;
                width: 100%;
                float: left;
                
            }
            
            
            
            .span1{
                width: 100%;
                padding-top:  10px;
                display: block;
                margin-bottom: 20px;
                position: relative;
                color: white;
                font-size: 30px;
                line-height: 1.2;
                border-radius: 21px;
                text-align: center;
            }
            
            
            .input{
                margin: 15px;
                padding: 10px;
                background-color: #ddd;
                border:1px solid #b19999;
                border-radius: 21px;
            }
            .select{
             padding: 7px;
            border-radius: 21px;
            position: relative;
            }
            .button{
                margin: auto;
                background-color: #6675df;
                padding: 10px 40px 10px 40px;
                border-radius: 21px;
                border: 1px;
                color: white;
            }
            
            .button:focus{
                background-color: #006666;
            }
           
           
            
            input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button { 
  -webkit-appearance: none; 
  margin: 0; 
}
.clear{
    clear: left;
}

.container2{
    background-image: url("Photos/blank-composition-data-373076.jpg");
    background-size: cover;
    float: left;
    width: 100%;
    height: 100%;
    margin-left: auto;
}
#register{
    border-radius: 5px;
    /* margin: 100px 230px; */
    margin-top: 6.5%;
    margin-left: 30%;
    margin-right: 30%;
    margin-bottom: 6.5%;
    height: 400px;
    padding: 50px;
    padding-bottom: 350px;
        background: rgba(0, 0, 0, 0.51);
    /* padding: 10px 100px; */
    box-shadow: 10px 10px 40px grey;
}
#login{
    float: left;
    border-radius: 5px;
    /* margin: 100px 230px; */
    margin-top: 6.5%;
    margin-left: 30%;
    margin-right: 30%;
    margin-bottom: 6.5%;
    height: 400px;
    padding: 100px;
        background: rgba(0, 0, 0, 0.51);
    /* padding: 10px 100px; */
    box-shadow: 10px 10px 40px grey;
}
.fit-screen{
    max-width: 100%;
    max-height: 100%;
    margin: 0 auto;
    display: block;
    padding: 0;
    opacity: 0.6;
}
.site-name-center{
    position: absolute;
  top: 40%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: black;
  font-size: 50px;
 
}
.b1{
    background-color: #ddd;
  border: none;
  color: black;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 21px;
  font-size: 21px;
}
.a2{
    color: black;
    text-decoration: none;
}
.line-break{
    position: relative;
    border: none;
}
.email{
    position: relative;
}
.sign-in{
    color: whitesmoke;
}
#register{
    display: none;
}
#registerbtn{
    display: none;
}
        </style>
    </head>
    <body>
        
        <div class="clear">
        <div class="container1">
            <img class="fit-screen" src="Photos/cheerful-colleagues-digital-device-1432942.jpg" >
            <div class="site-name-center">Employee Evaluation and Appraisal<br> 
                <div class="pushbutton">
                    <button class="b1" id="loginbtn"><a href="#login-link" class="a2">Login</a></button></div>
<!--                  <div class="pushbutton">  
            <button class="b1" id="registerbtn"><a href="#login-link" class="a2">Register</a></button>
</div>--></div>
        </div>
        </div>
        <div class="clear">
            <a id="login-link"></a>
                <center>
        <div class="container2">
            <div class="inner" id="login">
              <form  action="LoginControl" method="post">
                  
               <span class="span1">Login to continue</span>
                  
                 
               <select class="select" name="post">
                   <option  value="Appraiser" >Appraiser</option>
                   <option  value="Reviewer">Reviewer</option>
                   
               </select>
                      
               <div class="email">
                   <input class="input" type="number" placeholder="User ID" name="employeeId" required>
               </div>
               <div class="email">
                 <input class="input" type="password" placeholder="Password" name="employeePassword" required>
               </div>
               <input type="submit" name="login" value="Login" class="button"/>
               
               <br>
               <br><p class="message">Don't have an account? <a href="#">Sign In</a></p>  
           </form>
          </div>
            
            <div class="inner" id="register">
                 <span class="span1">Sign In</span>
              <form action="ManageEmployee.jsp" method="post" enctype="multipart/form-data">
        <input class="input" type="text" placeholder="3 digit employee code" name="empno"><br>
        <input class="input" type="text" placeholder="Full Name" name="name"><br>
        <input class="input" type="email" placeholder="Email Id" name="emailid"><br>
        <input class="input" type="text" placeholder="Location" name="location"><br>
        <select class="select" name="post">
                <option value="Appraiser">Appraiser</option>
                <option value="Reviewer">Reviewer</option>            
            </select> 
        <input class="input" type="date" name="joiningdate"><br>
        <input class="input" type="text" placeholder="Job Title" name="jobtitle"><br>
        <input class="input" type="text" placeholder="Password" name="password"><br>
        <span class="upload-image">Upload Your Image:</span>
        <input class="input" type="file" name="pimage" >
        <br>
        <br>
        <input type="submit" value="Sign In" class="button"/>
        <br><p class="message">Already Registered? <a href="#"  >Log In</a></p>  
      </form>
          </div>
        </div>
                   <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script>
         $('.message a').click(function(){
            $('div.inner').animate({height:"toggle",opacity:"togge"},"2000"); 
              $('a.a2').text(function(i,v){
                  return v=== 'Login' ?'Register' :'Login'
              }); 
         });
        
         
  </script> 
                </center>
<!--            </a>-->
        </div>
       
    </body>
</html>

