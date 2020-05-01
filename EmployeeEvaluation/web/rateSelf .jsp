<%
    String key=(String)session.getAttribute("key");
    if(key==null)
    {
        response.sendRedirect("Login.jsp");
    }
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Emp_Nav.jsp" %>

<!DOCTYPE html >
<html>
<head>

	<title>rate</title>
             <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="script/script.js" type="text/javascript"></script>
  <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>

        
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
	
    	<ul class="nav nav-tabs">
    		<li ><a href="ratingsSupervisor.jsp">Supervisory Evaluation</a></li>
   			 <li class="active"><a href="ratingsSelf.jsp">Self Evaluation</a></li>
    	</ul>
		<div class="row">
                    <div class="col-lg-2">
                    </div>
                    <div class="col-md-8">
                        <h2 class="hed1">Self Evaluation:-</h2>
    		<br><br>
                <h4>Rate yourself accordingly </h4>
                <div class="card">
    		<form action="Self_feedback" class="form" method="post">
    		<input type="hidden" name="action" value="doRateSelf"/>
    		<table class="table table-bordered">
     			<thead>
     				<tr>
     					<th></th>
     					<th>No DemonstratedExemplary</th>
     					<th>BeginningAccomplished</th>
     					<th>Developing</th>
     					<th>Accomplished</th>
     					<th>Exemplary</th>
                                        
     				</tr>
                               
     			</thead>
     			<tbody>
     				<tr>
                                    <td class="opt">Personal Management</td>
     					<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="self1" id="optionsRadios1" value="1">
                                      
                        	</label>
                    	</td>
     					<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self1" id="optionsRadios2" value="2">
                        	</label>           
                    	</td>
     					<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self1" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
     					<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self1" id="optionsRadios4" value="4">
                        	</label>           
                    	</td>
     					<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self1" id="optionsRadios5" value="5">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                    	<td class="opt">Team Management</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="self2" id="optionsRadios1" value="1">
                        	</label>
                    	</td>
                    	<td align="center  ">
                       	 	<label class="radio">
                        		<input type="radio" name="self2" id="optionsRadios2" value="2">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self2" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self2" id="optionsRadios4" value="4">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self2" id="optionsRadios5" value="5" >
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                    	<td class="opt">Leadership Abilities</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="self3" id="optionsRadios1" value="1">
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self3" id="optionsRadios2" value="2">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self3" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self3" id="optionsRadios4" value="4">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self3" id="optionsRadios5" value="5">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Commercial Awareness</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="self4" id="optionsRadios1" value="1">
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self4" id="optionsRadios2" value="2">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self4" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self4" id="optionsRadios4" value="4">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self4" id="optionsRadios5" value="5">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Problem Solving</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="self5" id="optionsRadios1" value="1">
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self5" id="optionsRadios2" value="2">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self5" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self5" id="optionsRadios4" value="4">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self5" id="optionsRadios5" value="5">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Time Management</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="self6" id="optionsRadios1" value="1" >
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self6" id="optionsRadios2" value="2">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self6" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self6" id="optionsRadios4" value="4">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self6" id="optionsRadios5" value="5">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Communication</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="self7" id="optionsRadios1" value="1">
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self7" id="optionsRadios2" value="2">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self7" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self7" id="optionsRadios4" value="4">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                       			 <input type="radio" name="self7" id="optionsRadios5" value="5">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Managing Amguity</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="self8" id="optionsRadios1" value="1">
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self8" id="optionsRadios2" value="2">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self8" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self8" id="optionsRadios4" value="4">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self8" id="optionsRadios5" value="5">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Computer Skills</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="self9" id="optionsRadios1" value="1">
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self9" id="optionsRadios2" value="2">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self9" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self9" id="optionsRadios4" value="4">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self9" id="optionsRadios5" value="5">
                        	</label>           
                    	</td>
                	</tr>

                	<tr>
                            <td class="opt">Customer Care</td>
                    	<td align="center">
                        	<label class="radio">
                        		<input type="radio" name="self10" id="optionsRadios1" value="1">
                        	</label>
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self10" id="optionsRadios2" value="2">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self10" id="optionsRadios3" value="3">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self10" id="optionsRadios4" value="4">
                        	</label>           
                    	</td>
                    	<td align="center  ">
                        	<label class="radio">
                        		<input type="radio" name="self10" id="optionsRadios5" value="5">
                        	</label>           
                    	</td>
                	</tr>
     			</tbody>
     		</table>
     	
                <center >
     		<input class="btn btn-info btn-lg" type="submit" value="Submit" name="selffeedback">
                <br><br>
                
                </center>
     		</form>
                    </div>
                    </div>
                    <div class="col-lg-2">
                    </div>
                </div>
        
	
</body>
</html>