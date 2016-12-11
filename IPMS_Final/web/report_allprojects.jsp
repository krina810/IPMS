<%-- 
    Document   : report_allprojects
    Created on : Apr 23, 2014, 6:19:40 PM
    Author     : Admin
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>All Projects</title>
         <link href="templatemo_style.css" rel="stylesheet" type="text/css" />

        <link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

        <script type="text/javascript" src="scripts/jquery.min.js"></script>
        <script type="text/javascript" src="scripts/ddsmoothmenu.js">
        </script>

        <script type="text/javascript">

            ddsmoothmenu.init({
                mainmenuid: "templatemo_menu", //menu DIV id
                orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
                classname: 'ddsmoothmenu', //class added to menu's outer DIV
                //customtheme: ["#1c5a80", "#18374a"],
                contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
            })

        </script>
        <script type='text/javascript' src="scripts/validate.js">
        </script>
    </head>
    <body>

        <div id="templatemo_wrapper">

            <div id="templatemo_header">

                <div id="site_title"><h1><a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a></h1></div>



            </div> <!-- end of header -->
            <div id="templatemo_main">
                <h2 align="center">Project Details:</h2>
                <hr></hr>
                <div>

                    <div align="center">
                        <form method="post" name="contact" action="#">
                            <input type="hidden" name="post" value="Send" />
                            <table align="center" width="100%">
                          
     <tr><th>ProjectID</th><th>Project Title</th><th>Project Type</th><th>Project Desc</th><th>Client ID</th><th>Project Start date</th><th>Project Deadline</th><th>Project Manager</th></tr>          
                                
                                <% try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            out.println("<h1>Driver not found:" + e + e.getMessage() + "</h1>" );
        }%>
        <% 
        Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms" );
            Statement stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery("Select * from Project"); 
       String ids;
         while(rs.next())
         {
        %>     
                     
                           
                            <tr align="center"><td><%=rs.getString("ProjectID")%></td>
                                <td><%=rs.getString("ProjectName")%></td>
                                <td><%=rs.getString("ProjectType")%></td>
                                <td><%=rs.getString("ProjectDesc")%></td>
                                <td><%=rs.getString("ClientID")%></td>
                                <td><%=rs.getString("ProjectStartDate")%></td>
                                <td><%=rs.getString("ProjectDeadline")%></td>
                                <td><%=rs.getString("ProjectManagerID")%></td>
                                </tr>
                                
             <%   }     %>           
             <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
             <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
             <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                             </table>    
                                
                             
                              <div align="center"><td><input type="button" class="submit_btn" name="reset" id="reset" value="Print" onclick="window.print();"/>
                            </div>        </form>

                    </div> 
                </div>
                
                <div class="cleaner"></div>  </div> <!-- end of main -->
        </div>

        <div id="templatemo_footer_wrapper">
            <div id="templatemo_footer">
                Copyright © 2048 <a href="#">IPMS</a> | 
                               <div class="cleaner"></div>
            </div>
        </div> 

    </body>
</html>
