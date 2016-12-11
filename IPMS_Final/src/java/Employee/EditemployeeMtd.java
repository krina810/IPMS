/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Employee;

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
@WebServlet(name = "EditemployeeMtd", urlPatterns = {"/EditemployeeMtd"})
public class EditemployeeMtd extends HttpServlet {

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
        
            int recpud=0;
           // String skills="";
            String buttonaction=request.getParameter("act");
            String Empid=request.getParameter("empid");
            String EmpFName=request.getParameter("author");
            String EmpMName=request.getParameter("author1");
            String EmpLName=request.getParameter("author2");
            String Emailid=request.getParameter("email");
            String Contact=request.getParameter("contact");
            String Add=request.getParameter("text");
            String Des=request.getParameter("desg");
           // String Dep=request.getParameter("dep");
             String Dob=request.getParameter("dob");
              String Doj=request.getParameter("doj");
            String Skillset=request.getParameter("skill");
           // for(int i=0;i<Skillset.length;i++){
             //skills+=Skillset[i]+",";}
        switch (buttonaction) {
            case "Update":
                try{
                    try (Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms" )) {
                        Statement stmt1 = conn.createStatement();
                        //ResultSet rs;
                        recpud = stmt1.executeUpdate("Update Employee set FirstName='"+EmpFName+"',MiddleName='"+EmpMName+"',LastName='"+EmpLName+"',EmailID='"+Emailid+"',Address='"+Add+"',Skillset='"+Skillset+"',DateofBirth='"+Dob+"',DateofJoining='"+Doj+"',ContactNo='"+Contact+"',Designation='"+Des+"' where EmployeeID='"+Empid+"'"); 
                     
                        response.sendRedirect("Aviewemployee.jsp");
                    }
                }
                 catch(SQLException | IOException e)
                 {}
                break;
            case "Delete":
                try{
                    try (Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms" )) {
                        Statement stmt1 = conn.createStatement();
                        //ResultSet rs;
                        recpud = stmt1.executeUpdate("Delete from Employee where EmployeeID='"+Empid+"'");
                     
                        response.sendRedirect("Aviewemployee.jsp");
                    }
                }
                 catch(SQLException | IOException e)
                 {}
                break;
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
