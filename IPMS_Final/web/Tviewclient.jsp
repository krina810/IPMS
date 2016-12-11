<%-- 
    Document   : Tviewclient
    Created on : Apr 26, 2014, 6:45:11 PM
    Author     : Admin
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>Dashboard</title>
<style type="text/css">

#evtcal a:link {font: normal 12pt "Arial", "Helvetica", "Sans Serif"; color: #004400; text-decoration: none;}		/* unvisited link */
#evtcal a:visited {font: normal 12pt "Arial", "Helvetica", "Sans Serif"; color: #004400; text-decoration: none;}	/* visited link */
#evtcal a:hover {font: normal 12pt "Arial", "Helvetica", "Sans Serif"; color: #004400; text-decoration: underline;}	/* mouse over link */
#evtcal a:active {font: normal 12pt "Arial", "Helvetica", "Sans Serif"; color: #004400; text-decoration: none;}		/* selected link */

</style>

<script type="text/javascript" src="events.js"></script>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="scripts/jquery.min.js"></script>
<script type="text/javascript" src="scripts/ddsmoothmenu.js">
</script>
<script type='text/javascript' src="scripts/validate.js"> 

</script> 

</head>

<body style="background-color: transparent;" onload="changedate('return');">
<div id="templatemo_wrapper">

	<div id="templatemo_header">
    
    	<div id="site_title"><h1></h1></div>
       
            <%HttpSession ss=request.getSession();%>
        <p align="right"> Welcome <a href=ProfileMtd><%=ss.getAttribute("id")%></a>&nbsp; <a href=index.jsp>Logout</a> </p>
                    
            <div id="templatemo_menu" class="ddsmoothmenu">           
            <ul>
                        		<li><a href="tlaccount.jsp" class="selected">My Dashboard</a>
                    
              	</li>
          		<li><a href="report_list_of_projects_1emp.jsp">My work schedule</a>
                    
              	</li>
              	
              
		<li><a href="report.jsp">Reports</a></li>
    		<li><a href="TMyMailComposer.jsp">Mails</a></li> 
       </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
        
    </div> <!-- end of header -->
       <div id="templatemo_main">
<h2> Clients: </h2>
        <div class="col_w630 float_l">
        	
             <div id="contact_form">

                <form method="post" name="contact" action="editemployee.jsp">
                    <input type="hidden" name="post" value="Send" />
                    <table class="cleaner h10">  
                        
                        <% try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            out.println("<h1>Driver not found:" + e + e.getMessage() + "</h1>" );
        }%>
        <% 
        Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms" );
            Statement stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery("Select ClientID from Client"); 
       String ids;
         
        %>
        <tr><td>Select Client:</td><td>
        <select  name="cid">
        
            <% while(rs.next()){ %>
                                 
            <%ids=rs.getString("ClientID");%>
                                    <option value="<%=ids%>"><%=ids%></option>
                                   
              
              <% } %>
              </select>    </td>
              </tr>
    <tr><td><input type="submit"  name="edit" id="edit" value="Edit" />
        <input type="button" name="update" value="Update">
        <input type="reset"  name="reset" id="reset" value="Cancel" /></td></tr>
                    </table>
                </form>
        
            </div> 
        </div>
        
       
           <div id="templatemo_sidebar">
        	
            <div class="sb_box">
            	<h3>Additional tasks</h3>
                <ul class="tmo_list">
             		 <li><a href="Tviewemployee.jsp">View Employees</a></li>
                        <li><a href="Tviewclient.jsp">View Clients</a></li>		
                        <li><a href="Tassignmentdetails.jsp">Add Assignment</a></li>
                        <li><a href="Tgenerate.jsp">Progress</a></li>
                
            </div>       
            <div class="cleaner"></div>
		</div>
	    <div class="cleaner"></div>
    </div> <!-- end of main -->
</div>

<div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
        Copyright © 2048 <a href="#">Your Company Name</a> | 
        <div class="cleaner"></div>
    </div>
</div> 
  




</body>
</html>
