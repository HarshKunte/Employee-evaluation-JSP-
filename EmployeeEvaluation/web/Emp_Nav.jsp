<%-- 
    Document   : newjsp1
    Created on : 27 Mar, 2019, 12:11:05 PM
    Author     : Harsh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        
        <style>
            @font-face{
                src: url(Fonts/Montserrat/Montserrat-Regular.ttf);
                font-family: monty;
            }
            *{
                font-family: monty;
            } 
        </style>
            
   


  
    </head>
    <body> 
        
        <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar" style="color:black" >
        <span class="icon-bar" ></span>
        <span class="icon-bar" ></span>
        <span class="icon-bar" ></span>
      </button>
       
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="user.jsp" >My Profile</a></li>
        <li><a href="rateSelf.jsp" >Give Feedback</a></li>
        <li><a href="Performance_History.jsp" >My Report</a></li>
        <li><a href="EmpComplaint.jsp" >File a Complaint</a></li>
        <li><a href="Logout.jsp" >Logout</a></li>
      </ul>
    </div>
  </div>
</nav> 
        
        
     
<!-- Use any element to open the sidenav 
<span onclick="openNav()">open</span>
-->
<!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
  	
    </body>
</html>
