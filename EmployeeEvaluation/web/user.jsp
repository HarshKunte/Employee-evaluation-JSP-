<%
    String key=(String)session.getAttribute("key");
    if(key==null)
    {
        response.sendRedirect("Login.jsp");
    }
    
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*" %>
<%@page import="Connection.Config" %>

<!DOCTYPE html>
<html lang="en">
<head>
	 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Profile</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    <style>
        #form-input{
             margin: 15px;
                padding: 10px;
                background-color: #ddd;
                border:1px solid #b19999;
                border-radius: 21px;
                width: 250px;
                height: 40px;
        }
        .form-group{
            width: 250px;
        }
        label{
         padding-left: 21px;   
        }
        .card{
            box-shadow: 0 4px 20px 0px rgba(0, 0, 0, 0.14), 0 7px 10px -5px rgba(233, 0, 0, 0.4);
                
        }
        .col-md-6{
            width: 70%;
        }
        .container-fluid{
            margin-top: 100px;
        }
         @font-face{
                src: url(Fonts/Montserrat/Montserrat-Regular.ttf);
                font-family: monty;
            }
            nav{
                height: 50px;
            }    
    </style>
</head>
<body>
  

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->
    
         <sql:setDataSource var="conn" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/epevaluation"
                           password="root" user="root"/>
        
            <sql:query var="rs" dataSource="${conn}">
                SELECT * FROM masterdata;
            </sql:query>

        <div class="content">
            <div class="container-fluid ">
                <div class="row">
                    <div class="col-md-6 ">
                        <div class="card" style="margin: 0px 10px 0px 150px; box-shadow:2px 2px 5px #ccccff;  ">
                            <div class="header">
                                <h4 class="title">My Profile</h4>
                            </div>
                            <div class="content">
                                <form action="UpdateProfile" method="post">
                                    <div class="row">
                                        <div class="col-sm-5">
                                        
                                            <div class="form-group">
                                                <label>Company </label>
                                                <input type="text" class="form-control" id="form-input" disabled placeholder="Company" value="Employee Evaluatory Systems .inc">
                                                
                                            </div>
                                        
                                        
                                          
                       <%
            try{
            Connection conn=Config.getConnection();
            if(conn.isValid(20))
            {
                String sql="select * from masterdata where empId=?";
                PreparedStatement pst=conn.prepareStatement(sql);
                pst.setString(1, (String)session.getAttribute("employeeId"));
                ResultSet rs=pst.executeQuery();
                while(rs.next()){
              %>
                                        
                                            <div class="form-group">
                                               <label>Username</label>
                                                <input type="text" class="form-control" id="form-input"  value="<%=rs.getString("name")%>" name="name">
                                            </div>
                                        
                                       
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email address</label>
                                                <input type="email" class="form-control" id="form-input" value="<%=rs.getString("emailid")%>" name="email" >
                                            </div>
                                        </div>
                                            
                                            <div class="col-sm-1"></div>
                                            
                                            <div class="col-sm-5">
                                            <div class="form-group">
                                                <label>Location</label>
                                                <input type="text" class="form-control" id="form-input" value="<%=rs.getString("location")%>" name="location" >
                                            </div>
                                       
                                        
                                            <div class="form-group">
                                                <label>Joining Date</label>
                                                <input class="form-control" type="text" id="form-input" placeholder="yyyy-mm-dd" value="<%=rs.getString("joiningdate")%>" name="joiningdate" ><br>
                                            </div>
                                        
                                        
                                            <div class="form-group">
                                                <label>Designation</label>
                                                <input type="text" class="form-control" id="form-input" value="<%=rs.getString("designation")%>" name="designation">
                                            </div>
                                       
                                    

                                  
<!--
                                    <button type="submit" class="btn btn-info btn-fill pull-right" style="margin-right: 20px" name="update">Update Profile</button>-->
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                                        </div>   
                        
                    
                    
                      
                </div>
            </div>
        </div>
                                            <div class="card card-user col-sm-3" style="float:left;  box-shadow:3px 3px 5px #ccccff;  ">
                            <div class="image">
                                <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                     <a href="#">
                                    <img class="avatar border-gray" src="images//<%=rs.getString("image")%>" alt="no image"/>

                                      <h4 class="title"><%=rs.getString("name")%><br />
                                          <small><%=rs.getString("designation")%></small>
                                      </h4>
                                    </a>
                                </div>
                               
                            </div>
                            
                          </div>
                        
                    
                   <% }
            }
            }catch(Exception e)
            {
                out.print(e);
            }
        %>
</div>
            </div>
        </div>
      

   



</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

</html>
