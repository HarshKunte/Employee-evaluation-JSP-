<%-- 
    Document   : supfeedback
    Created on : 6 Apr, 2019, 9:58:15 PM
    Author     : Harsh
--%>
<%
    String key=(String)session.getAttribute("key");
    if(key==null)
    {
        response.sendRedirect("Login.jsp");
    }
    
%>
<%@include file="HR_Nav.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import= "Connection.Config" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="script/script.js" type="text/javascript"></script>
  <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        th{
            text-align: center;
        }
        
        
        body{
            background-color: #f7f9ff;
        }
        
        label{
            align-items: center;    
        }
        .hed1{
            font-size: 28px;
            font-family: sans-serif;
            
        }
        .card{
            background-color: white;
            border: 1px solid lightgrey;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s
        }
        label{
            
           padding-left:5px; 
        }
        .card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.4);
}
th{
    font-size: 16px;
    font-style: oblique;
}
table{
    background-color: white;
}
.opt{
    text-align: center;
    font-style:oblique;
    font-size: 16px;
}
radio{
    
}
        
        </style>
    </head>
    <body>
       
    	
		<div class="row">
                    <div class="col-lg-2">
                    </div>
                    <div class="col-md-8">
                        <h2 class="hed1">Rate Employee Appropriately:-</h2>
    		<br><br>
    		<form class="form" action="Submit_feedback_sup" method="post">
    		
                 <div class="form-group">
                    <h4>Select Employee whom you want to review</h4>   
                    
                       <%
            try{
            Connection conn=Config.getConnection();
            if(conn.isValid(20))
            {
                String sql="select * from masterdata";
                PreparedStatement pst=conn.prepareStatement(sql);
                ResultSet rs=pst.executeQuery();
              %>
              
               <select class='form-control' id='employee' name='employee'>
              <%      
                while(rs.next())    
                {
        %>            
                  <option  value="<%=rs.getString("empId")%>"><%=rs.getString("name")%></option>
                  <%
                }%> 
                </select>
                <% }
            }catch(Exception e)
            {
                out.print(e);
            }
        %>
              
            </div>
        <div class="card">
                <table class="table table-bordered">
     			<thead>
     				<tr>
     					<th style="width:200px"></th>
     					<th style="width:200px">Satisfactory</th>
     					<th  style="width:200px">not bad</th>
     					<th  style="width:200px">Average</th>
     					<th  style="width:200px">Good</th>
     					<th  style="width:200px">Excellent</th>
     				</tr>
     			</thead>
     			<tbody>
     				<tr>
                                    <td class="opt">Quality of work</td>
     					<td align="center">
                        	<label class="radio">
                                    <input type="radio" name="supq1" id="optionsRadios1" value="1" required>
                        	</label>
                    	</td>
     					<td align="center  ">
     				
                        	<label class="radio">
                                    <input type="radio" name="supq1" id="optionsRadios2" value="2" required>
                        	</label>           
                    	</td>
     					<td align="center  ">
                        	<label class="radio">
                                    <input type="radio" name="supq1" id="optionsRadios3" value="3" required>
                        	</label>           
                    	</td>
     					<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq1" id="optionsRadios4" value="4" required>
                        	</label>           
                    	</td>
     					<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq1" id="optionsRadios5" value="5" required>
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Work Consistency</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="supq2" id="optionsRadios1" value="1" required>
                        	</label>
                    	</td>
                    	<td align="center  ">
                       	 	<label class="radio">
                        		<input type="radio" name="supq2" id="optionsRadios2" value="2" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq2" id="optionsRadios3" value="3" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq2" id="optionsRadios4" value="4" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq2" id="optionsRadios5" value="5" required >
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Communication</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="supq3" id="optionsRadios1" value="1" required>
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq3" id="optionsRadios2" value="2">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq3" id="optionsRadios3" value="3" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq3" id="optionsRadios4" value="4" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq3" id="optionsRadios5" value="5" required>
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Leadership Abilities</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="supq4" id="optionsRadios1" value="1" required>
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq4" id="optionsRadios2" value="2" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq4" id="optionsRadios3" value="3" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq4" id="optionsRadios4" value="4" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq4" id="optionsRadios5" value="5" required>
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Group Work</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="supq5" id="optionsRadios1" value="1" required>
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq5" id="optionsRadios2" value="2" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq5" id="optionsRadios3" value="3" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq5" id="optionsRadios4" value="4" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq5" id="optionsRadios5" value="5" required>
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Productivity</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="supq6" id="optionsRadios1" value="1" required >
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq6" id="optionsRadios2" value="2" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq6" id="optionsRadios3" value="3" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq6" id="optionsRadios4" value="4" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq6" id="optionsRadios5" value="5" required>
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Creativity</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="supq7" id="optionsRadios1" value="1" required>
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq7" id="optionsRadios2" value="2" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq7" id="optionsRadios3" value="3" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq7" id="optionsRadios4" value="4" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                       			 <input type="radio" name="supq7" id="optionsRadios5" value="5" required>
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Technical Skills</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="supq8" id="optionsRadios1" value="1" required>
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq8" id="optionsRadios2" value="2" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq8" id="optionsRadios3" value="3" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq8" id="optionsRadios4" value="4" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq8" id="optionsRadios5" value="5" required>
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Punctuality</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="supq9" id="optionsRadios1" value="1" required>
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq9" id="optionsRadios2" value="2" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq9" id="optionsRadios3" value="3" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq9" id="optionsRadios4" value="4" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq9" id="optionsRadios5" value="5" required>
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Time Management</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="supq10" id="optionsRadios1" value="1" required>
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq10" id="optionsRadios2" value="2" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq10" id="optionsRadios3" value="3" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq10" id="optionsRadios4" value="4" required>
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="supq10" id="optionsRadios5" value="5" required>
                        	</label>           
                    	</td>
                	</tr>
     			</tbody>
     		</table>
               
                <center>
     		<input class="btn btn-info btn-lg" type="submit" name="submitfeedback" value="Submit">
                <br><br>
                </center>
            </div>
     		</form>
                    </div>
         <div class="col-lg-2">
                    </div>
                </div>
            
 
    
    </body>
</html>
