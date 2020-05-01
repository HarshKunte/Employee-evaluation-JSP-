package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import Connection.Config;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("        <style>\n");
      out.write("            html{\n");
      out.write("                scroll-behavior: smooth;\n");
      out.write("            }\n");
      out.write("            @font-face{\n");
      out.write("                src: url(Fonts/Montserrat/Montserrat-Regular.ttf);\n");
      out.write("                font-family: monty;\n");
      out.write("            }\n");
      out.write("            *{\n");
      out.write("                 font-family: monty;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .container1{\n");
      out.write("                position: relative;\n");
      out.write("                text-align: center;\n");
      out.write("                height: 100%;\n");
      out.write("                width: 100%;\n");
      out.write("                float: left;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            .span1{\n");
      out.write("                width: 100%;\n");
      out.write("                padding-top:  10px;\n");
      out.write("                display: block;\n");
      out.write("                margin-bottom: 20px;\n");
      out.write("                position: relative;\n");
      out.write("                color: white;\n");
      out.write("                font-size: 30px;\n");
      out.write("                line-height: 1.2;\n");
      out.write("                border-radius: 21px;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            .input{\n");
      out.write("                margin: 15px;\n");
      out.write("                padding: 10px;\n");
      out.write("                background-color: #ddd;\n");
      out.write("                border:1px solid #b19999;\n");
      out.write("                border-radius: 21px;\n");
      out.write("            }\n");
      out.write("            .select{\n");
      out.write("             padding: 7px;\n");
      out.write("            border-radius: 21px;\n");
      out.write("            position: relative;\n");
      out.write("            }\n");
      out.write("            .button{\n");
      out.write("                margin: auto;\n");
      out.write("                background-color: #6675df;\n");
      out.write("                padding: 10px 40px 10px 40px;\n");
      out.write("                border-radius: 21px;\n");
      out.write("                border: 1px;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .button:focus{\n");
      out.write("                background-color: #006666;\n");
      out.write("            }\n");
      out.write("           \n");
      out.write("           \n");
      out.write("            \n");
      out.write("            input[type=number]::-webkit-inner-spin-button, \n");
      out.write("input[type=number]::-webkit-outer-spin-button { \n");
      out.write("  -webkit-appearance: none; \n");
      out.write("  margin: 0; \n");
      out.write("}\n");
      out.write(".clear{\n");
      out.write("    clear: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container2{\n");
      out.write("    background-image: url(\"Photos/blank-composition-data-373076.jpg\");\n");
      out.write("    background-size: cover;\n");
      out.write("    float: left;\n");
      out.write("    width: 100%;\n");
      out.write("    height: 100%;\n");
      out.write("    margin-left: auto;\n");
      out.write("}\n");
      out.write("#register{\n");
      out.write("    border-radius: 5px;\n");
      out.write("    /* margin: 100px 230px; */\n");
      out.write("    margin-top: 6.5%;\n");
      out.write("    margin-left: 30%;\n");
      out.write("    margin-right: 30%;\n");
      out.write("    margin-bottom: 6.5%;\n");
      out.write("    height: 400px;\n");
      out.write("    padding: 50px;\n");
      out.write("    padding-bottom: 350px;\n");
      out.write("        background: rgba(0, 0, 0, 0.51);\n");
      out.write("    /* padding: 10px 100px; */\n");
      out.write("    box-shadow: 10px 10px 40px grey;\n");
      out.write("}\n");
      out.write("#login{\n");
      out.write("    float: left;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    /* margin: 100px 230px; */\n");
      out.write("    margin-top: 6.5%;\n");
      out.write("    margin-left: 30%;\n");
      out.write("    margin-right: 30%;\n");
      out.write("    margin-bottom: 6.5%;\n");
      out.write("    height: 400px;\n");
      out.write("    padding: 100px;\n");
      out.write("        background: rgba(0, 0, 0, 0.51);\n");
      out.write("    /* padding: 10px 100px; */\n");
      out.write("    box-shadow: 10px 10px 40px grey;\n");
      out.write("}\n");
      out.write(".fit-screen{\n");
      out.write("    max-width: 100%;\n");
      out.write("    max-height: 100%;\n");
      out.write("    margin: 0 auto;\n");
      out.write("    display: block;\n");
      out.write("    padding: 0;\n");
      out.write("    opacity: 0.6;\n");
      out.write("}\n");
      out.write(".site-name-center{\n");
      out.write("    position: absolute;\n");
      out.write("  top: 40%;\n");
      out.write("  left: 50%;\n");
      out.write("  transform: translate(-50%, -50%);\n");
      out.write("  color: black;\n");
      out.write("  font-size: 50px;\n");
      out.write(" \n");
      out.write("}\n");
      out.write(".b1{\n");
      out.write("    background-color: #ddd;\n");
      out.write("  border: none;\n");
      out.write("  color: black;\n");
      out.write("  padding: 10px 20px;\n");
      out.write("  text-align: center;\n");
      out.write("  text-decoration: none;\n");
      out.write("  display: inline-block;\n");
      out.write("  margin: 4px 2px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  border-radius: 21px;\n");
      out.write("  font-size: 21px;\n");
      out.write("}\n");
      out.write(".a2{\n");
      out.write("    color: black;\n");
      out.write("    text-decoration: none;\n");
      out.write("}\n");
      out.write(".line-break{\n");
      out.write("    position: relative;\n");
      out.write("    border: none;\n");
      out.write("}\n");
      out.write(".email{\n");
      out.write("    position: relative;\n");
      out.write("}\n");
      out.write(".sign-in{\n");
      out.write("    color: whitesmoke;\n");
      out.write("}\n");
      out.write("#register{\n");
      out.write("    display: none;\n");
      out.write("}\n");
      out.write("#registerbtn{\n");
      out.write("    display: none;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"clear\">\n");
      out.write("        <div class=\"container1\">\n");
      out.write("            <img class=\"fit-screen\" src=\"Photos/cheerful-colleagues-digital-device-1432942.jpg\" >\n");
      out.write("            <div class=\"site-name-center\">Employee Evaluation and Appraisal<br> \n");
      out.write("                <div class=\"pushbutton\">\n");
      out.write("                    <button class=\"b1\" id=\"loginbtn\"><a href=\"#login-link\" class=\"a2\">Login</a></button></div>\n");
      out.write("<!--                  <div class=\"pushbutton\">  \n");
      out.write("            <button class=\"b1\" id=\"registerbtn\"><a href=\"#login-link\" class=\"a2\">Register</a></button>\n");
      out.write("</div>--></div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"clear\">\n");
      out.write("            <a id=\"login-link\"></a>\n");
      out.write("                <center>\n");
      out.write("        <div class=\"container2\">\n");
      out.write("            <div class=\"inner\" id=\"login\">\n");
      out.write("              <form  action=\"LoginControl\" method=\"post\">\n");
      out.write("                  \n");
      out.write("               <span class=\"span1\">Login to continue</span>\n");
      out.write("                  \n");
      out.write("                 \n");
      out.write("               <select class=\"select\" name=\"post\">\n");
      out.write("                   <option  value=\"Appraiser\" >Appraiser</option>\n");
      out.write("                   <option  value=\"Reviewer\">Reviewer</option>\n");
      out.write("                   \n");
      out.write("               </select>\n");
      out.write("                      \n");
      out.write("               <div class=\"email\">\n");
      out.write("                   <input class=\"input\" type=\"number\" placeholder=\"User ID\" name=\"employeeId\" required>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"email\">\n");
      out.write("                 <input class=\"input\" type=\"password\" placeholder=\"Password\" name=\"employeePassword\" required>\n");
      out.write("               </div>\n");
      out.write("               <input type=\"submit\" name=\"login\" value=\"Login\" class=\"button\"/>\n");
      out.write("               \n");
      out.write("               <br>\n");
      out.write("               <br><p class=\"message\">Don't have an account? <a href=\"#\">Sign In</a></p>  \n");
      out.write("           </form>\n");
      out.write("          </div>\n");
      out.write("            \n");
      out.write("            <div class=\"inner\" id=\"register\">\n");
      out.write("                 <span class=\"span1\">Sign In</span>\n");
      out.write("              <form action=\"ManageEmployee.jsp\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("        <input class=\"input\" type=\"text\" placeholder=\"3 digit employee code\" name=\"empno\"><br>\n");
      out.write("        <input class=\"input\" type=\"text\" placeholder=\"Full Name\" name=\"name\"><br>\n");
      out.write("        <input class=\"input\" type=\"email\" placeholder=\"Email Id\" name=\"emailid\"><br>\n");
      out.write("        <input class=\"input\" type=\"text\" placeholder=\"Location\" name=\"location\"><br>\n");
      out.write("        <select class=\"select\" name=\"post\">\n");
      out.write("                <option value=\"Appraiser\">Appraiser</option>\n");
      out.write("                <option value=\"Reviewer\">Reviewer</option>            \n");
      out.write("            </select> \n");
      out.write("        <input class=\"input\" type=\"date\" name=\"joiningdate\"><br>\n");
      out.write("        <input class=\"input\" type=\"text\" placeholder=\"Job Title\" name=\"jobtitle\"><br>\n");
      out.write("        <input class=\"input\" type=\"text\" placeholder=\"Password\" name=\"password\"><br>\n");
      out.write("        <span class=\"upload-image\">Upload Your Image:</span>\n");
      out.write("        <input class=\"input\" type=\"file\" name=\"pimage\" >\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <input type=\"submit\" value=\"Sign In\" class=\"button\"/>\n");
      out.write("        <br><p class=\"message\">Already Registered? <a href=\"#\"  >Log In</a></p>  \n");
      out.write("      </form>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("                   <script src=\"https://code.jquery.com/jquery-3.3.1.min.js\"></script>\n");
      out.write("  <script>\n");
      out.write("         $('.message a').click(function(){\n");
      out.write("            $('div.inner').animate({height:\"toggle\",opacity:\"togge\"},\"2000\"); \n");
      out.write("              $('a.a2').text(function(i,v){\n");
      out.write("                  return v=== 'Login' ?'Register' :'Login'\n");
      out.write("              }); \n");
      out.write("         });\n");
      out.write("        \n");
      out.write("         \n");
      out.write("  </script> \n");
      out.write("                </center>\n");
      out.write("<!--            </a>-->\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}