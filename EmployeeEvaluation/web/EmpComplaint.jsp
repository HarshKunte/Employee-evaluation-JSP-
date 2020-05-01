<%-- 
    Document   : EmpComplaint
    Created on : 27 Feb, 2019, 7:43:28 PM
    Author     : admin
--%>
<%
    String key=(String)session.getAttribute("key");
    if(key==null)
    {
        response.sendRedirect("Login.jsp");
    }
    
%>
<%@page import="java.sql.*" %>
<%@page import="Connection.Config" %>
<%@include file="Emp_Nav.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Complaint Form</title>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- jQuery files for date chooser !-->
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  
  
  $('#toggle').click(function () {
    //check if checkbox is checked
    if ($(this).is(':checked')) {
        
        $('#sendNewSms').removeAttr('disabled'); //enable input
        
    } else {
        $('#sendNewSms').attr('disabled', true); //disable input
    }
});

  </script>
<!-- Date chooser file ends !-->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

       
  
      
    </head>
    <body>
        <div class="content" style="margin-top: 100px;">
            <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2">
                
            </div>
            <div class="col-md-8">
                <div class="jumbotron">
        
        <h3>Employee Complaint</h3>
        
        <h6>Tell  us what happened in the form below
        </h6>    
          
                <hr>
                
                <form id="forname" action="EmpComplaint.jsp" method="post">
                    <div class="form-group">
            <b><label>Name of Employee</label></b><br>
            <input type="text" name="ename" required="" class="form-control"/><br><br>
            
            <b><label>Date of Complaint</label></b><br>
            <input type="text" id="datepicker" class="form-control"><br><br>
    
            <b><label>Supervisor's Name</label> </b><br>
            <input type="text" name="supname" required="" class="form-control"/><br><br>
            
            <b><label>Describe accurately the details of your complaint and against whom :</label></b><br>
            <textarea name="detail" rows="5" cols="50" required="" class="form-control"></textarea><br><br>
            
            <b><label>Describe how the incident you are complaining about has impacted negatively on your work :</label></b><br>
            <textarea name="comment" rows="5" cols="50" required="" class="form-control"></textarea><br><br>
            
            <b><label>Describe how the company can deal effectively with your complaint :</label></b><br>
            <textarea name="describe" rows="5" cols="50" required="" class="form-control"></textarea><br><br>
            
            
            <label>Give additional comments which you believe will be important during further investigations of your complaint :</label>
                <textarea name="addcomment" rows="5" cols="50" required="" class="form-control"></textarea><br/><br/>
              
                <input type="checkbox" name="one" id="one" class="form-inline"/>
            <label for="one">I have read and I accept the terms and conditions</label>
            <br />

<div class="col-sm-12">
            <button type="submit" name="btnnext" id="btnnext" class="btn btn-warning">Submit Complaint<span class="glyphicon glyphicon-chevron-right"></span></button>
            <input type="reset" name="reset" value="Clear Form" class="btn btn-warning" />
        </div>

<script type="text/javascript">
        var checkBoxes = $('#one');
        checkBoxes.change(function () {
        $('#btnnext').prop('disabled', checkBoxes.filter(':checked').length < 1);
        });
        checkBoxes.change();
    </script>
                
                
           
            </div></form>
               
                </div>
      </div>
            </div>
        </div>
        
            </div>
       
        
    </body>
</html>

<%
    String req= request.getParameter("info");
    
    if(req!=null){
        
        String ename=request.getParameter("ename");
        String date=request.getParameter("date");
        String supname=request.getParameter("supname");
        String detail=request.getParameter("detail");
        String comment=request.getParameter("comment");
        String describe=request.getParameter("describe");
        String addcomment=request.getParameter("addcomment");
        
        try {
            
           
            Connection conn = Config.getConnection();
            String sql = "insert into empcomplaint(empId, date, supervisorname, detail, comment, description, additionalcomment) values(?,?,?,?,?,?,?)";

           //CREATE DATABASE `epevaluation` /*!40100 DEFAULT CHARACTER SET latin1 */;
           //

            PreparedStatement pst = conn.prepareStatement(sql);
            
            pst.setString(1, (String)session.getAttribute("empId"));
            pst.setString(2, date);
            pst.setString(3, supname); 
            pst.setString(4, detail); 
            pst.setString(5, comment);
            pst.setString(6, describe);
            pst.setString(7, addcomment);
           

           int  updateQuery =pst.executeUpdate();
            if (updateQuery != 0) {
                out.print("<select>alert('Data Added Successfully')</select>");
                response.sendRedirect("Emp_Home.jsp");
            } else {
                out.print("<select>alert('Data not Added Successfully')</select>");
            }
             //conn.close();
        } catch (Exception e) {
            System.out.print(e);
            //e.printStackTrace();
        }
    }
%>
