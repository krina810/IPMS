/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Krina
 */
@WebServlet(name = "ProjectMtd", urlPatterns = {"/ProjectMtd"})
public class ProjectMtd extends HttpServlet {

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
       try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
           // out.println("<h1>Driver not found:" + e + e.getMessage() + "</h1>" );
        }
         
           
             
            int recupd = 0;
            String skills="";

            //Date date=new Date();
            String Pid=request.getParameter("pid");
            String PName=request.getParameter("pname");
            String PType=request.getParameter("ptype");
            String Desc=request.getParameter("desc");
             String sdm=request.getParameter("sdm"); 
             String sdd=request.getParameter("sdd");
             String sdy=request.getParameter("sdy");
            String SD=sdd+"/"+sdm+"/"+sdy;
            
           String Dm=request.getParameter("dm"); 
             String Dd=request.getParameter("dd");
             String Dy=request.getParameter("dy");
            String DD=Dd+"/"+Dm+"/"+Dy;
            
            String Pmid=request.getParameter("pmid");
            
            String Cid=request.getParameter("cid");
            String status=request.getParameter("status");
             
            
            
            
             try{
            Connection conn;
            conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms" );
            Statement stmt = conn.createStatement();
           // ResultSet rs;
           
            String Query=("INSERT INTO Project(ProjectID,ProjectName,ProjectType,ProjectDesc,ProjectStartDate,ProjectDeadline,ProjectManagerID,ClientID,Status)VALUES('"+Pid+"','"+PName+"','"+PType+"','"+Desc+"','"+SD+"','"+DD+"','"+Pmid+"','"+Cid+"','"+status+"')");
	    recupd = stmt.executeUpdate(Query);
           } 
             catch(SQLException e) 
             {
                out.print(" "+e.getMessage());
            }
              try{
            try (Connection con= DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms" )) {
                Statement stm = con.createStatement();
               // ResultSet rs;
               
                String Query=("Update Employee Set ProjectID='"+Pid+"' where EmployeeID='"+Pmid+"'");
                recupd = stm.executeUpdate(Query);
               response.sendRedirect("Aaddproject.jsp");
            }
           } 
             catch(SQLException | IOException e) 
             {
            out.print(" "+e.getMessage());
            }
         
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
