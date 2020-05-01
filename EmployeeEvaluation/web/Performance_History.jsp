<!DOCTYPE HTML>
<%
    String key=(String)session.getAttribute("key");
    if(key==null)
    {
        response.sendRedirect("Login.jsp");
    }
    
%>
<%@include file="Emp_Nav.jsp" %>

<%@page import="java.sql.*" %>
<%@page import=" Connection.Config" %>
<html>
<head>
    <title>Your Performance</title>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!--
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	-->
    <link rel="stylesheet" type="text/css" href="css/style.css">
     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script src="script/circle-progress.js" type="text/javascript"></script>
        <script src="script/circle-progress.min.js" type="text/javascript"></script>
     <style>
     /* These are just a test styles - you don't need them in your project */
/*body {
  background-color: #444;
  padding-top: 40px;
  font: 15px/1.3 Arial, sans-serif;
  color: #fff;
  text-align: center;

}*/
.box{
    width: 100%;
    box-shadow: 0 4px 20px 0px rgba(0 0 0 0.14), 0 7px 10px -5px rgba(233, 0, 0, 0.4);
}
.circles {
    margin-left: 10%;
    margin-top: 10%;
  margin-bottom: 30px;
  
  
}

.circle {
  width: 100px;
  margin: 6px 6px 20px;
  display: inline-block;
  position: relative;
/*  text-align: center;*/
  line-height: 1.2;
}


.circle strong {
  position: absolute;
  top: 30px;
  left: 0;
  width: 100%;
/*  text-align: center;*/
  line-height: 40px;
  font-size: 30px;
}

.circle strong i {
  font-style: normal;
  font-size: 0.6em;
  font-weight: normal;
  text-align: center;
}
 .circle strong{
    margin-bottom: 50%;
    margin-left: 70%;
    margin-right: 50%;
    margin-top: 50%;
}
.box{
        box-shadow: 0 4px 20px 0px rgba(0, 0, 0, 0.14), 0 7px 10px -5px rgba(233, 0, 0, 0.4);
      
}
#piechart{
    float: left;
}


        </style>
       
</head>
<body>
<!--<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>-->

       

<div class="row">
   
    <div class="col-sm-8">
	<div id="Page_Contents">
    	
    
    	

<% 
       Connection con=Config.getConnection();
     
       
       String sql1="select * from evaluationdata where empId=? ";
     
       PreparedStatement pst1=con.prepareStatement(sql1);
       
        pst1.setString(1, (String)session.getAttribute("employeeId"));
      
       ResultSet rs1=pst1.executeQuery();
       
       if(rs1.next()){
       %>
       <div class="box" id="progressbar">
            <h2 style="padding-left: 5%;padding-top: 5%;">Your Overall Rating </h2>
         <div class="circles">
            
<div class="second circle">
      <strong></strong>
      
    </div>
             
         </div>
         
       <script>
             $('.second.circle').circleProgress({
         
    value: <%=rs1.getInt("ratingtotal")%>/100,
    size: 200
  }).on('circle-animation-progress', function(event, progress) {
    $(this).find('strong').html(Math.round(<%=rs1.getInt("ratingtotal")%> * progress) + '<i>%</i>');
  });

           </script>
           
           
       </div>  
<div class="box" id="piechart"></div>             
        <!--                 <div id="circle"></div> -->
<script type="text/javascript">
    
    
   
  $('#circle').circleProgress({
    
    value:<%=rs1.getInt("ratingtotal")%>/100,
    size: 300,
    fill: {
      gradient: ["red", "orange"]
    }
    
  });
  
</script>
    
           


<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);


// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Task', 'Hours per Day'],
  ['Personal Management', <%=rs1.getInt("sup1total")%>],
  ['Team Management', <%=rs1.getInt("sup2total")%>],
  ['Leadership Abilities', <%=rs1.getInt("sup3total")%>],
  ['Commercial Awareness',<%=rs1.getInt("sup4total")%>],
  ['Problem Solving',<%=rs1.getInt("sup5total")%>],
  ['Time Management', <%=rs1.getInt("sup6total")%>],
  ['Communication', <%=rs1.getInt("sup7total")%>],
  ['Managing Amguity', <%=rs1.getInt("sup8total")%>],
  ['Computer Skills', <%=rs1.getInt("sup9total")%>],
  ['Customer Care', <%=rs1.getInt("sup10total")%>]
]);

<% }%>

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Analysis of each parameter', 'width':800, 'height':600};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>
        </div>
    </div>
<div class="col-sm-3"></div>
    </div>

</body>
</html>