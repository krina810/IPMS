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
@WebServlet(name = "ModuleaddMtd", urlPatterns = {"/ModuleaddMtd"})
public class ModuleaddMtd extends HttpServlet {

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
            out.println("<h1>Driver not found:" + e + e.getMessage() + "</h1>" );
        }
         
          try {
             
            int recupd = 0;
            //String skills="";

            //Date date=new Date();
            String Mid=request.getParameter("modid");
            String Pid=request.getParameter("pid");
            String Modid=Mid+"-"+Pid;
            String Empid=request.getParameter("eid");
            String Desc=request.getParameter("text");
             String sdm=request.getParameter("sdm"); 
             String sdd=request.getParameter("sdd");
             String sdy=request.getParameter("sdy");
            String SD=sdd+"/"+sdm+"/"+sdy;
            
           String Dm=request.getParameter("dm"); 
             String Dd=request.getParameter("dd");
             String Dy=request.getParameter("dy");
            String DD=Dd+"/"+Dm+"/"+Dy;
            try (Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms" )) {
                Statement stmt = conn.createStatement();
               // ResultSet rs;
               
                String Query=("INSERT INTO Module(ModuleID,ProjectID,EmployeeID,ModuleDesc,ModuleStartDate,ModuleDeadline)VALUES('"+Modid+"','"+Pid+"','"+Empid+"','"+Desc+"','"+SD+"','"+DD+"')");
                recupd = stmt.executeUpdate(Query);
                
                response.sendRedirect("Pmoduledetails.jsp");
            }
        } catch (SQLException | IOException e) {
            out.println( "<h1>exception: "+e+e.getMessage()+"</h1>" );
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
