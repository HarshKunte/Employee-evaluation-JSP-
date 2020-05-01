<%-- 
    Document   : Dashboard
    Created on : Feb 23, 2019, 3:57:40 PM
    Author     : DELL
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <%--<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">--%>
        <style>
            @font-face{
                src: url(Fonts/Montserrat/Montserrat-Regular.ttf);
                font-family: monty;
            }
            @font-face{
                src: url(Fonts/Montserrat/Montserrat-Bold.ttf);
                font-family: montyb;
            }
            .nav{
                background: black;
            }
            *{
                font-family: monty;
                margin: 0;
                padding: 0;
            }
            h2{
                padding: 10px;
                color: white;
            }
              /*Sink away*/
   .hvr-icon-fade {
  display: inline-block;
  vertical-align: middle;
  -webkit-transform: perspective(1px) translateZ(0);
  transform: perspective(1px) translateZ(0);
  box-shadow: 0 0 1px rgba(0, 0, 0, 0);
  text-decoration: none;
  color: white;
  padding-left: 85%;
  font-size: 11px;
  
}
.hvr-icon-fade .hvr-icon {
  -webkit-transform: translateZ(0);
  transform: translateZ(0);
  -webkit-transition-duration: 0.2s;
  transition-duration: 0.5s;
  -webkit-transition-property: color;
  transition-property: color;
}
.hvr-icon-fade:hover .hvr-icon, .hvr-icon-fade:focus .hvr-icon, .hvr-icon-fade:active .hvr-icon {
  color: grey;
}
.nav1{
    background: #20213e;
}

           
        </style>
    </head>
    <body>
        <div class="nav">
            
            <ul class="ul1">
                <h2>Welcome
                        <a href="Logout.jsp" alt="Survey" class="hvr-icon-fade">
                            <i class="material-icons hvr-icon">power_settings_new</i>
                            
                    </a>
                </h2>
            </ul>
        </div>
        
    </body>
</html>
