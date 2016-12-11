/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Krina
 */
@WebServlet(urlPatterns = {"/ProfileMtd"})
public class ProfileMtd extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        HttpSession ss=request.getSession();
        String a=(String) ss.getAttribute("id");
         
         try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            out.println("<h1>Driver not found:" + e + e.getMessage() + "</h1>" );
        }
         try{
         
          Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms");  
       
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from Employee where FirstName='"+a+"'");
        int count=0;
        while(rs.next())
          {
             /* String Empid=rs.getString("EmployeeID");
              String FName=rs.getString("FirstName");
              String MName=rs.getString("MiddleName");
              String LName=rs.getString("LastName");
              String Email=rs.getString("EmailID");
              String Add=rs.getString("Address");
              String Skill=rs.getString("Skillset");
              String DOB=rs.getString("DateofBirth");
              String DOJ=rs.getString("DateofJoining");
              String Contact=rs.getString("ContactNo");
              response.sendRedirect("PProfile.jsp");*/
               
             String des=rs.getString("Designation");
              
              switch (des) {
                case "ProjectManager":
                    response.sendRedirect("PProfile.jsp");
                    break;
                case "TeamLeader":
                    response.sendRedirect("TProfile.jsp");
                    break;
                case "Developer":
                    response.sendRedirect("DProfile.jsp");
                    break;
               
            }
         
         
         
          }
         
         }
         catch(SQLException | IOException e){}
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
