<%-- 
    Document   : HrComplaint
    Created on : 2 Mar, 2019, 1:05:52 PM
    Author     : admin
--%>
<%
    String key=(String)session.getAttribute("key");
    if(key==null)
    {
        response.sendRedirect("Login.jsp");
    }
    
%>
<%@include file="HR_Nav.jsp" %>
<%@page import="java.sql.*" %>
<%@page import="Connection.Config" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1">
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
  
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
    <script>
                function checkFluency(){
    var checkbox = document.getElementById('check');
  if (checkbox.checked != true){
    alert("you need to be ");
}
}
</script>
        <title>HR Complaint</title>
 
    </head>
    <body>
        
         <div class="content">
            <div class="container-fluid">
        <div class="row">
        <div class="col-lg-2">
        </div>
            <div class="col-lg-8">
                <div class="jumbotron">
        <h4>Human Resource Complaint Form</h4>
        <hr>
        
        <form action="HrComplaint.jsp" method="post">
            <div class="form-group" >
            <label> Name : </label>
            <input type="text" name="fname" required="" class="form-control"/><br><br>
            
            
            <label>Date of complaint : </label>
            <input type="text" id="datepicker" class="form-control"><br><br>
            
            <label>  Phone No.: </label>
            <input type="number" name="phone" required="" class="form-control"/><br><br>
            
            
            <label>  E-Mail :</label>
            <input type="email" name="email" required="" class="form-control"/><br><br>
            
            <label>Name of the person against whom the complaint is made :</label>
            <input type="text" required="" name="compname" class="form-control"/><br><br>
           
          
            <label>The main points of the allegation :</label><br>
            <textarea name="describe" rows="4" cols="60" class="form-control"></textarea><br>
           
            
            <label>The effect on the person filling the complaint :</label>
            <textarea name="effect" rows="1" cols="60" class="form-control"></textarea><br/><br/>
            
            
            <label>Any other relevant information :</label>
            <textarea rows="5" cols="50" class="form-control" name="relinfo"></textarea>
             <br/><br/>
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
            </div>
        </form>
                </div>
            </div>
        </div>
        
        </div>
        </div>
        
    </body>
</html>

<%
    String req = request.getParameter("SubmitQuery");
    
    if(req!=null){
        out.print("shukla");
        String fname=request.getParameter("fname");
        String date=request.getParameter("date");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        String compname=request.getParameter("compname");
        String describe=request.getParameter("describe");
        String effect=request.getParameter("effect");
        String relinfo=request.getParameter("relinfo");
        try {
            Connection conn = Config.getConnection();
            String sql = "insert into hrcomplaint(fname, date, phone, email, compname, describe, effect, relinfo,empId) values(?,?,?,?,?,?,?,?,?)";

            PreparedStatement pst = conn.prepareStatement(sql);

            pst.setString(1, fname);
            pst.setString(2, date);
            pst.setString(3, phone);
            pst.setString(4, email);

            pst.setString(5, compname);
            pst.setString(6, describe);
            pst.setString(7, effect);
            pst.setString(8, relinfo);
            pst.setString(9, (String)session.getAttribute("employeeId"));
            out.print("done");
            if (pst.executeUpdate() > 0) {
                out.print("done");
                out.print("<select>alert('Data Added Successfully')</select>");
                response.sendRedirect("Emp_Dash.jsp");
            } else {
                out.print("<select>alert('Data not Added Successfully')</select>");
            }
            conn.close();
        } catch (Exception e) {
            System.out.print(e);
            //e.printStackTrace();
        }
    }
%>
