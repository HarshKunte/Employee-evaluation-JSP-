<%-- 
    Document   : Show_Emp
    Created on : 11 Mar, 2019, 3:53:53 PM
    Author     : Harsh
--%>


<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
 .column {
     
  float: left;
  width: 23.3%;
  //height:200px; 
  //display: inline-block;    
  margin-bottom: 16px;
  padding: 0 8px;
}

/* Display the columns below each other instead of side by side on small screens */
@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    height: 200px;
    display: block;
  }
}

/* Add some shadows to create a card effect */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  height: 345px;
 
}

/* Some left and right padding inside the container */
.container {
  padding: 0 16px;
   height: 100px;
}




.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

.avatar{
    border-radius: 50%;
    width: 150px;
    height: 150px;
}
center{
    height: 150px;
    width: 100%;
}
.upper_part{
    width: 100%;
    height: 150px;
    text-align: center;
    font-size: 50px;
}
.lower_part{
    text-align: center;
    width: 90%;
    
    margin-left: 15%;
    margin-right: 15%;
}
        </style>
    </head>
    <body>
        <%--  <div class="row"> --%>
         <sql:setDataSource var="conn" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/epevaluation"
                           password="root" user="root"/>
        
            <sql:query var="rs" dataSource="${conn}">
                SELECT * FROM masterdata where post="Appraiser"
            </sql:query>
                
                <div class="upper_part" style="margin-top:100px">
                <p>Our Team</p>
            </div>
                
                <c:forEach var="row" items="${rs.rows}">
                   <div class="column">
                      <div class="card">
                          <center> <img class="avatar" src="images//<c:out value="${row.image}"/>"/></center>
                   <div class="container">
                        <h2><c:out value="${row.name}"/></h2>
                        <p class="title"><c:out value="${row.designation}"/></p>
                        <p>Some text that describes </p>
                        <p><c:out value="${row.email}"/></p>
                            
                      </div>
                   </div>
                  </div>
                </c:forEach>
                         
    </body>
</html>
