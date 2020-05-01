/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.Config;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Harsh
 */
@WebServlet(urlPatterns = {"/Self_feedback"})
public class Self_feedback extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Self_feedback</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Self_feedback at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out=null;
    out=response.getWriter();
        HttpSession session = request.getSession();
		String action = request.getParameter("selffeedback");
                if(action!=null){
                      String self1 = request.getParameter("self1");
                     String self2 = request.getParameter("self2");
                     String self3 = request.getParameter("self3");
                     String self4 = request.getParameter("self4");
                   String self5 = request.getParameter("self5");
                     String self6 = request.getParameter("self6");
                    String self7 = request.getParameter("self7");
                   String self8 = request.getParameter("self8");
                     String self9 = request.getParameter("self9");
                     String self10 = request.getParameter("self10");
                      
                       
                               try{
                  
                        Connection conn=Config.getConnection();
                        if(conn.isValid(20))
                        {
                            try{
                                String sql="select * from ratings where empId=? and raterId=?";
                                 PreparedStatement pst1=conn.prepareStatement(sql);
                            pst1.setString(1, (String)session.getAttribute("employeeId"));
                             pst1.setString(2, "0");
                           
                            ResultSet rs1=pst1.executeQuery();
                            
                            
                            if(rs1.next()){
                            String sql1="update ratings set self1=?,self2=?,self3=?,self4=?,self5=?,self6=?,self7=?,self8=?,self9=?,self10=?,total=(self1+self2+self3+self4+self5+self6+self7+self8+self9+self10+supq1+supq2+supq3+supq4+supq5+supq6+supq7+supq8+supq9+supq10),selftotal=((self1+self2+self3+self4+self5+self6+self7+self8+self9+self10)*2)" 
                                    + "where empId=? and raterId=? ";
                            PreparedStatement pst=conn.prepareStatement(sql1);
                          
                            pst.setString(1, self1);
                            pst.setString(2,self2);
                            pst.setString(3, self3);
                            pst.setString(4, self4);
                            pst.setString(5, self5);
                            pst.setString(6, self6);
                            pst.setString(7, self7);
                            pst.setString(8, self8);
                            pst.setString(9, self9);
                            pst.setString(10, self10);
                              pst.setString(11, (String)session.getAttribute("employeeId"));
                                pst.setString(12, "0");
                              
                            int res=pst.executeUpdate();
                            //int res=pst.executeUpdate();
                            if(res>0)
                            {
                               // if(session.getAttribute("post").equals("Appraiser"))
                                //{
                                //request.getRequestDispatcher("newjsp.jsp").forward(request, response);
                           // }
                             //   else if(session.getAttribute("post").equals("Reviewer")){
                              
                                   String sql8="update evaluationdata set ratingtotal=( select SUM(total)/COUNT(total) from ratings where empId=?) where empId=?";
                                    String sql9="update evaluationdata set sup1total=( select SUM(supq1)/COUNT(supq1) from ratings where empId=?) where empId=?";
                                     String sql10="update evaluationdata set sup2total=( select SUM(supq2)/COUNT(supq2) from ratings where empId=?) where empId=?";
                                      String sql11="update evaluationdata set sup3total=( select SUM(supq3)/COUNT(supq3) from ratings where empId=?) where empId=?";
                                       String sql12="update evaluationdata set sup4total=( select SUM(supq4)/COUNT(supq4) from ratings where empId=?) where empId=?";
                                        String sql13="update evaluationdata set sup5total=( select SUM(supq5)/COUNT(supq5) from ratings where empId=?) where empId=?";
                                         String sql14="update evaluationdata set sup6total=( select SUM(supq6)/COUNT(supq6) from ratings where empId=?) where empId=?";
                                          String sql15="update evaluationdata set sup7total=( select SUM(supq7)/COUNT(supq7) from ratings where empId=?) where empId=?";
                                           String sql16="update evaluationdata set sup8total=( select SUM(supq8)/COUNT(supq8) from ratings where empId=?) where empId=?";
                                            String sql17="update evaluationdata set sup9total=( select SUM(supq9)/COUNT(supq9) from ratings where empId=?) where empId=?";
                                             String sql18="update evaluationdata set sup10total=( select SUM(supq10)/COUNT(supq10) from ratings where empId=?) where empId=?";
                                             
                            PreparedStatement pt8=conn.prepareStatement(sql8);
                            pt8.setString(1,(String)session.getAttribute("employeeId"));
                             pt8.setString(2,(String)session.getAttribute("employeeId"));
                              PreparedStatement pt9=conn.prepareStatement(sql9);
                            pt9.setString(1,(String)session.getAttribute("employeeId"));
                             pt9.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt10=conn.prepareStatement(sql10);
                            pt10.setString(1,(String)session.getAttribute("employeeId"));
                             pt10.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt11=conn.prepareStatement(sql11);
                            pt11.setString(1,(String)session.getAttribute("employeeId"));
                             pt11.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt12=conn.prepareStatement(sql12);
                            pt12.setString(1,(String)session.getAttribute("employeeId"));
                             pt12.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt13=conn.prepareStatement(sql13);
                            pt13.setString(1,(String)session.getAttribute("employeeId"));
                             pt13.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt14=conn.prepareStatement(sql14);
                            pt14.setString(1,(String)session.getAttribute("employeeId"));
                             pt14.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt15=conn.prepareStatement(sql15);
                            pt15.setString(1,(String)session.getAttribute("employeeId"));
                             pt15.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt16=conn.prepareStatement(sql16);
                            pt16.setString(1,(String)session.getAttribute("employeeId"));
                             pt16.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt17=conn.prepareStatement(sql17);
                            pt17.setString(1,(String)session.getAttribute("employeeId"));
                             pt17.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt18=conn.prepareStatement(sql18);
                            pt18.setString(1,(String)session.getAttribute("employeeId"));
                             pt18.setString(2,(String)session.getAttribute("employeeId"));
                             
                          
                            int r8=pt8.executeUpdate();
                            int r9=pt9.executeUpdate();
                             int r10=pt10.executeUpdate();
                              int r11=pt11.executeUpdate();
                               int r12=pt12.executeUpdate();
                                int r13=pt13.executeUpdate();
                                 int r14=pt14.executeUpdate();
                                  int r15=pt15.executeUpdate();
                                   int r16=pt16.executeUpdate();
                                    int r17=pt17.executeUpdate(); 
                                    int r18=pt18.executeUpdate();
                                    
                                    
                            if(r8>0&&r9>0&&r10>0&&r11>0&&r12>0&&r13>0&&r14>0&&r15>0&&r16>0&&r17>0&&r18>0){
                                
                            out.print("<script>alert('successfull')</script>");
                                                        }
                            else
                            out.print("<script>alert('unsuccess')</script>");
                            
                            
                                   
                            }
                            //}
                            else
                            {
                                out.print("<script>alert('Invalid username or password')</script>");
                            }
                            
                             }
                            else{
                                  String sql2="insert into ratings(empId,self1,self2,self3,self4,self5,self6,self7,self8,self9,self10) values(?,?,?,?,?,?,?,?,?,?,?)";
                            PreparedStatement pst2=conn.prepareStatement(sql2);
                            pst2.setString(1, (String)session.getAttribute("employeeId"));
                            pst2.setString(2, self1);
                            pst2.setString(3, self2);
                            pst2.setString(4, self3);
                            pst2.setString(5,self4);
                            pst2.setString(6, self5);
                            pst2.setString(7, self6);
                            pst2.setString(8, self7);
                            pst2.setString(9, self8);
                            pst2.setString(10, self9);
                            pst2.setString(11, self10);
                            
                            int res=pst2.executeUpdate();
                            //int res=pst.executeUpdate();
                            if(res>0)
                            {
                               // if(session.getAttribute("post").equals("Appraiser"))
                                //{
                                //request.getRequestDispatcher("newjsp.jsp").forward(request, response);
                           // }
                             //   else if(session.getAttribute("post").equals("Reviewer")){
                                String sql3= "update ratings set total=(self1+self2+self3+self4+self5+self6+self7+self8+self9+self10+supq1+supq2+supq3+supq4+supq5+supq6+supq7+supq8+supq9+supq10),selftotal=((self1+self2+self3+self4+self5+self6+self7+self8+self9+self10)*2)"
                                    + "where empId=?";
                             PreparedStatement pst3=conn.prepareStatement(sql3);
                             pst3.setString(1,(String)session.getAttribute("employeeId"));
                               int res1=pst3.executeUpdate(); 
                               if(res1>0){
                                  String sql8="update evaluationdata set ratingtotal=( select SUM(total)/COUNT(total) from ratings where empId=?) where empId=?";
                                    String sql9="update evaluationdata set sup1total=( select SUM(supq1)/COUNT(supq1) from ratings where empId=?) where empId=?";
                                     String sql10="update evaluationdata set sup2total=( select SUM(supq2)/COUNT(supq2) from ratings where empId=?) where empId=?";
                                      String sql11="update evaluationdata set sup3total=( select SUM(supq3)/COUNT(supq3) from ratings where empId=?) where empId=?";
                                       String sql12="update evaluationdata set sup4total=( select SUM(supq4)/COUNT(supq4) from ratings where empId=?) where empId=?";
                                        String sql13="update evaluationdata set sup5total=( select SUM(supq5)/COUNT(supq5) from ratings where empId=?) where empId=?";
                                         String sql14="update evaluationdata set sup6total=( select SUM(supq6)/COUNT(supq6) from ratings where empId=?) where empId=?";
                                          String sql15="update evaluationdata set sup7total=( select SUM(supq7)/COUNT(supq7) from ratings where empId=?) where empId=?";
                                           String sql16="update evaluationdata set sup8total=( select SUM(supq8)/COUNT(supq8) from ratings where empId=?) where empId=?";
                                            String sql17="update evaluationdata set sup9total=( select SUM(supq9)/COUNT(supq9) from ratings where empId=?) where empId=?";
                                             String sql18="update evaluationdata set sup10total=( select SUM(supq10)/COUNT(supq10) from ratings where empId=?) where empId=?";
                                             
                            PreparedStatement pt8=conn.prepareStatement(sql8);
                            pt8.setString(1,(String)session.getAttribute("employeeId"));
                             pt8.setString(2,(String)session.getAttribute("employeeId"));
                              PreparedStatement pt9=conn.prepareStatement(sql9);
                            pt9.setString(1,(String)session.getAttribute("employeeId"));
                             pt9.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt10=conn.prepareStatement(sql10);
                            pt10.setString(1,(String)session.getAttribute("employeeId"));
                             pt10.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt11=conn.prepareStatement(sql11);
                            pt11.setString(1,(String)session.getAttribute("employeeId"));
                             pt11.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt12=conn.prepareStatement(sql12);
                            pt12.setString(1,(String)session.getAttribute("employeeId"));
                             pt12.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt13=conn.prepareStatement(sql13);
                            pt13.setString(1,(String)session.getAttribute("employeeId"));
                             pt13.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt14=conn.prepareStatement(sql14);
                            pt14.setString(1,(String)session.getAttribute("employeeId"));
                             pt14.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt15=conn.prepareStatement(sql15);
                            pt15.setString(1,(String)session.getAttribute("employeeId"));
                             pt15.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt16=conn.prepareStatement(sql16);
                            pt16.setString(1,(String)session.getAttribute("employeeId"));
                             pt16.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt17=conn.prepareStatement(sql17);
                            pt17.setString(1,(String)session.getAttribute("employeeId"));
                             pt17.setString(2,(String)session.getAttribute("employeeId"));
                             PreparedStatement pt18=conn.prepareStatement(sql18);
                            pt18.setString(1,(String)session.getAttribute("employeeId"));
                             pt18.setString(2,(String)session.getAttribute("employeeId"));
                             
                          
                            int r8=pt8.executeUpdate();
                            int r9=pt9.executeUpdate();
                             int r10=pt10.executeUpdate();
                              int r11=pt11.executeUpdate();
                               int r12=pt12.executeUpdate();
                                int r13=pt13.executeUpdate();
                                 int r14=pt14.executeUpdate();
                                  int r15=pt15.executeUpdate();
                                   int r16=pt16.executeUpdate();
                                    int r17=pt17.executeUpdate(); 
                                    int r18=pt18.executeUpdate();
                                    
                                    
                            if(r8>0&&r9>0&&r10>0&&r11>0&&r12>0&&r13>0&&r14>0&&r15>0&&r16>0&&r17>0&&r18>0){
                                
                            out.print("<script>alert('successfull')</script>");
                             request.getRequestDispatcher("Emp_Dash.jsp").forward(request, response);
                                                        }
                            else
                            out.print("<script>alert('unsuccess')</script>");
                             request.getRequestDispatcher("Emp_Dash.jsp").forward(request, response);
                            
                           
                               }
                               else{
                                   out.print("<script>alert('Unsuccessfull')</script>");
                                    request.getRequestDispatcher("Emp_Dash.jsp").forward(request, response);
                               }
                                   
                            }
                            //}
                            else
                            {
                                out.print("<script>alert('unsuccessfull')</script>");
                            }
                            
                           
                     /*       String sql8="insert into masterdata(ratingtotal) select SUM(total) from ratings group by empId=?";
                            PreparedStatement pt8=conn.prepareStatement(sql8);
                            pt8.setString(1,(String)session.getAttribute("employeeId"));
                            ResultSet r5=pt8.executeQuery();
                            if(r5.next()){
                                
                            out.print("<script>alert('successfull')</script>");
                                                        }
                            else
                            out.print("<script>alert('unsuccess')</script>");
                            
                      */      
                            }
                           
                            
                                     }
                            catch(Exception e1){
                                out.print(e1);
                            }
                        }
                               }
                            catch(Exception e1){
                                out.print(e1);
                            }
                            
                                
                        }   
                               
                        
                     
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
