/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Client;

import java.awt.HeadlessException;
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
import javax.swing.JOptionPane;

/**
 *
 * @author Krina
 */
@WebServlet(name = "ClientMtd", urlPatterns = {"/ClientMtd"})
public class ClientMtd extends HttpServlet {

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
             
            int recupd;
            recupd = 0;
            

            //Date date=new Date();
           String Clientid=request.getParameter("cid");
            String CPFName=request.getParameter("author");
           // String CPmName=request.getParameter("author1");
            //String CPLName=request.getParameter("author2");
            //String CPName=CPFName+" "+CPmName+" "+CPLName;
                
            String CMPName=request.getParameter("cmpnyname");
            String CPEmail=request.getParameter("email");
            String Add=request.getParameter("add");
            String City=request.getParameter("city"); 
            String State=request.getParameter("state");
            String Country=request.getParameter("country");
            String Projectid=request.getParameter("pid");
            
            
            
           // Integer Contact1=Integer.parseInt(request.getParameter("contactno1"));
           // Integer Contact2=Integer.parseInt(request.getParameter("contactno2"));
            
            String Contact1=request.getParameter("contactno1");
            String Contact2=request.getParameter("contactno2");
            try (Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms" )) {
                Statement stmt = conn.createStatement();
               // ResultSet rs;
               
                String Query=("INSERT INTO Client(ContactPersonName,ContactPersonEmail,ContactPersonPh1,ContactPersonPh2,ProjectID,CompanyName,Address,City,State,Country) VALUES('"+CPFName+"','"+CPEmail+"','"+Contact1+"','"+Contact2+"','"+Add+"','"+Projectid+"','"+CMPName+"','"+City+"','"+State+"','"+Country+"')");
                
                recupd = stmt.executeUpdate(Query);
                response.sendRedirect("Aregisteruser.jsp");
                
               if(recupd>0)
                {
                    JOptionPane.showMessageDialog(null,"data inserted");
                }
                
                //response.sendRedirect("Aregisteruser.jsp");
            }
        } catch (SQLException | IOException | HeadlessException e) {
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
