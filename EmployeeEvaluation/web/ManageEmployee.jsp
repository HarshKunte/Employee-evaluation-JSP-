<%-- 
    Document   : ManageProduct
    Created on : 28 Jan, 2019, 2:17:06 PM
    Author     : Harsh
--%>
<%
   // String key=(String)session.getAttribute("key");
    //if(key==null)
    //{
      //  response.sendRedirect("login.jsp");
    //}
    
%>
<%@include file="HR_Nav.jsp" %>
<%@page import="java.sql.*" %>
<%@page import="Connection.Config" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="java.util.Enumeration" %>
<!DOCTYPE html>
<%
    MultipartRequest mr=new MultipartRequest(request,"C:\\Users\\Harsh\\Documents\\NetBeansProjects\\EmployeeEvaluation\\web\\images");
    Enumeration files=mr.getFileNames();
    String pimage="";
    while(files.hasMoreElements())
    {
        String name=(String)files.nextElement();
        pimage =mr.getFilesystemName(name);
    }
    String empno= mr.getParameter("empno");
    String name= mr.getParameter("name");
    String email= mr.getParameter("emailid");
    String location= mr.getParameter("location");
    String joiningdate= mr.getParameter("joiningdate");
    String designation= mr.getParameter("jobtitle");
    String post= mr.getParameter("post");
    String password= mr.getParameter("password");
    try
    {
       Connection conn=Config.getConnection();
       String sql="insert into masterdata(empId,name,emailid,location,joiningdate,designation,post,image,emppw) values(?,?,?,?,?,?,?,?,?)";
       PreparedStatement pst=conn.prepareStatement(sql);
       pst.setString(1, empno);
       pst.setString(2, name);
       pst.setString(3, email);
       pst.setString(4, location);
      pst.setString(5, joiningdate);
        pst.setString(6, designation);
         pst.setString(7, post);
          pst.setString(8, pimage);
           pst.setString(9, password);
       if(pst.executeUpdate()>0)  
       {
            out.print("<script>alert('Registered Successfully')</script>");
            response.sendRedirect("Login.jsp");
       }
            else
            {
                 out.print("<script>alert('Not registered')</script>");
            }
    }
    catch(Exception e)
    {
        out.print(e);
        out.close();
    }
%>
 