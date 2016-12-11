<%-- 
    Document   : Psetstatus
    Created on : Apr 29, 2014, 1:23:52 PM
    Author     : Krina
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

<body>
<div id="templatemo_wrapper">

	<div id="templatemo_header">
    
    	<div id="site_title"><h1><a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a></h1></div>
       
            <%HttpSession ss=request.getSession();%>
        <p align="right"> Welcome <a href=ProfileMtd><%=ss.getAttribute("id")%></a>&nbsp; <a href=index.jsp>Logout</a> </p>
                    
            <div id="templatemo_menu" class="ddsmoothmenu">           
            <ul>
                        		<li><a href="Pmanageraccount.jsp" class="selected">My Dashboard</a>
                    <ul>
                        <li><a href="report_allprojects.jsp">Projects</a></li>
                        <li><a href="Pviewemployee.jsp">Teams</a></li>
                        <li><a href="report_assginments.jsp">Tasks</a></li>
                  	</ul>
              	</li>
          		<li><a href="report_list_of_projects_1emp.jsp">My Projects</a>
                    
              	</li>
              	
              
		<li><a href="report.jsp">Reports</a></li>
    		<li><a href="PMyMailComposer.jsp">Mails</a></li> 
       </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
        
    </div> <!-- end of header -->
       <div id="templatemo_main">
       <h2> Set Prototype </h2>
        <div class="col_w630 float_l">
        	
             <div id="contact_form">

                <form method="post" name="contact" action="setUrl">
                    <input type="hidden" name="post" value="Send" />
                    <table>
                         <% try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            out.println("<h1>Driver not found:" + e + e.getMessage() + "</h1>" );
        }%>
        <% 
        Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms" );
            Statement stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery("Select ProjectID from Project"); 
       String ids;
         
        %>
<tr>
<td>Select Project:</td><td><select  name="pid" id="pid">
        
               <% while(rs.next()){ %>
                                 
            <%ids=rs.getString("ProjectID");%>
                                    <option value="<%=ids%>"><%=ids%></option>
                                   
              
              <% } %></td></tr>
             <tr><td>Set Prototype Web Page URL</td>
                 <td><input type="text" name="txturl" value="" /></td></tr>           
             <tr><td>  <input type="submit" value="Set"/></td></tr>
                   </table>
                </form>
             
            </div> 
        </div>
        
        <div id="templatemo_sidebar">
        	
            <div class="sb_box">
            	<h3>Additional tasks</h3>
                <ul class="tmo_list">
             		 <li><a href="Pveiwemployee.jsp">View TeamLeader</a></li>
                      <!--  <li><a href="Pveiwclient.jsp">View Clients</a></li>	-->	
                        <li><a href="Pmoduledetails.jsp">Add Module</a></li>
                        <li><a href="Pgenerate.jsp">Progress</a></li>
                
            </div>       
            <div class="cleaner"></div>
		</div>
	    <div class="cleaner"></div>
    </div> <!-- end of main -->
</div>

<div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
        Copyright © 2048 <a href="#">IPMS</a> | 
        
        <div class="cleaner"></div>
    </div>
</div> 
  
<div align=center></div>




</body>
</html>


