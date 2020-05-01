/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Connection.Config;

/**
 *
 * @author Harsh
 */
@WebServlet(urlPatterns = {"/LoginControl"})
public class LoginControl extends HttpServlet {

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
            out.println("<title>Servlet LoginControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginControl at " + request.getContextPath() + "</h1>");
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
		String action = request.getParameter("login");
                if(action!=null){
                    String employeeId = request.getParameter("employeeId");
                         
			String employeePassword = request.getParameter("employeePassword");
                        String post = request.getParameter("post");
			request.setAttribute("employeeId", employeeId);
			request.setAttribute("employeePassword", employeePassword);
                       session.setAttribute("employeeId", employeeId);
                       session.setAttribute("post", post);
			  try{
                  
                        Connection conn=Config.getConnection();
                        if(conn.isValid(20))
                        {
                            try{
                            String sql1="select * from masterdata where empId=? and emppw=? and post=?";
                            PreparedStatement pst=conn.prepareStatement(sql1);
                            pst.setString(1, employeeId);
                            pst.setString(2, employeePassword);
                             pst.setString(3, post);
                            ResultSet res=pst.executeQuery();
                            //int res=pst.executeUpdate();
                            if(res.next())
                            {
                               session.setAttribute("key", "ok");
                                if(session.getAttribute("post").equals("Appraiser"))
                                {
                                request.getRequestDispatcher("Emp_Dash.jsp").forward(request, response);
                            }
                                else if(session.getAttribute("post").equals("Reviewer")){
                                 request.getRequestDispatcher("HR_Dash.jsp").forward(request, response);
                            }
                            }
                            else
                            {
                                out.print("<script>alert('Invalid username or password')</script>");
                                 request.getRequestDispatcher("Login.jsp").forward(request, response);
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
