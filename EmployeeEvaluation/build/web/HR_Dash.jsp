<%-- 
    Document   : Ad_Dash
    Created on : Mar 22, 2019, 10:05:10 PM
    Author     : DELL
--%>
<%@include file="Dash_Nav.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        <style>
            .start{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
            }
            .row{
                
                
            }
            .option{
                float: left;
                display: block;
                width: 300px;
                height: 150px;
                margin: 5px;
                margin: 10px 10px 10px 10px;
                padding: 20px 20px 20px 20px;
                text-align: center;
                transition: 0.4s;
                position: relative;
                cursor: pointer;
            }
            .option:hover{
                transform: scale(1.1);
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }
            .option i{
                font-size: 60px;
                line-height: 90px;
                
                color: white;
            }
            .option span{
                
                position: absolute ;
                left: 16px;
                bottom: 16px;
                color: white;
                font-size: 21px;
            }
            
            .o1{
                background: #76FF03;
            }
            .o2{
                background: #FF3D00;
            }
            .o3{
                background: #3D5AFE;
            }
            .o4{
                background: #546E7A;
            }
        </style>
    </head>
    <body>
        <div class="row">
            
            <div class="col-lg-2">
                
            </div>
            <div class="col-lg-8">
        </div>
        <div class="start">
            <div class="row 1">
                <a href="user.jsp">
                <li class="option o1">
                <i class="material-icons">&#xe7ff;</i>
                <span>My Profile</span>
                </li>
               </a>
                
                
                <a href="supfeedback_1.jsp">
                <li class="option o2">
                    <i class="material-icons">&#xe560;</i>
                    <span>Give Feedback</span>
                </li>
                </a>
                
                
            </div>
            
            <div class="row 2">
                <a href="Show_Emp.jsp">
                <li class="option o3">
                    <i class="material-icons">&#xe6e1;</i>
                    <span>View Employees</span>
                </li>
                </a>
                
                <a href="HrComplaint.jsp">
                <li class="option o4">
                    <i class="material-icons">&#xe87f;</i>
                    <span>File a Complaint</span>
                </li>
                
                
                </a>
            </div>
        </div>
        </div>
        
        <script src="script/OverallJavaScript.js" type="text/javascript"></script>
        <script type="text/javascript">
    	$(document).ready(function(){

        	demo.initChartist();

        	$.notify({
            	icon: 'pe-7s-gift',
            	message: "Welcome to <b>Employee Evaluation & Appraisal</b> - a beautiful freebie for every Company & Employee ."

            },{
                type: 'info',
                timer: 4000
            });

    	});
	</script>
        
    </body>
</html>
