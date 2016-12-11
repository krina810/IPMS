/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
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
@WebServlet(name = "EmployeeaddMtd", urlPatterns = {"/EmployeeaddMtd"})
public class EmployeeaddMtd extends HttpServlet {

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
            String skills="";
            //String Button=request.getParameter("act");
            //Date date=new Date();
            String Empid=request.getParameter("empid");
            String EmpFName=request.getParameter("author");
            String EmpMName=request.getParameter("author1");
            String EmpLName=request.getParameter("author2");
             String DOBm=request.getParameter("dobm"); 
             String DOBd=request.getParameter("dobd");
             String DOBy=request.getParameter("doby");
            String DOB=DOBd+"/"+DOBm+"/"+DOBy;
            
           String DOJm=request.getParameter("dojm"); 
             String DOJd=request.getParameter("dojd");
             String DOJy=request.getParameter("dojy");
            String DOJ=DOJd+"/"+DOJm+"/"+DOJy;
            
            String Emailid=request.getParameter("email");
            String Contact=request.getParameter("contactno");
            String Add=request.getParameter("add");
            String Desid=request.getParameter("desg");
            String Depid=request.getParameter("dep");
            String Skillset[]=request.getParameterValues("Skill");
            for(int i=0;i<Skillset.length;i++){
             skills+=Skillset[i]+",";}
           
             
            Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms" );
            Statement stmt = conn.createStatement();
           // ResultSet rs;
           
            String Query=("INSERT INTO Employee(EmployeeID,FirstName,MiddleName,LastName,EmailID,Address,Skillset,DateofBirth,DateofJoining,ContactNo,DepartmentID,Designation)VALUES('"+Empid+"','"+EmpFName+"','"+EmpMName+"','"+EmpLName+"','"+Emailid+"','"+Add+"','"+skills+"','"+DOB+"','"+DOJ+"','"+Contact+"','"+Depid+"','"+Desid+"')");
	    recupd = stmt.executeUpdate(Query);
           // request.setAttribute("Emailid",request.getParameter("email"));
            
         
	  String message = "Data Inserted";
response.sendRedirect("Aregisteruser.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
            //response.sendRedirect("addemployee.jsp
            conn.close();
          }catch (SQLException | IOException e) {
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
