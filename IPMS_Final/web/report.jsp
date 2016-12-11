<%-- 
    Document   : report
    Created on : Apr 24, 2014, 11:52:16 PM
    Author     : Admin
--%>


<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Chrome Web Design - Contact Page</title>
<meta name="keywords" content="Chrome, Contact, Web Design, CSS, HTML, free template" />
<meta name="description" content="Contact Chrome Web - free HTML CSS template from templatemo.com" />
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

</head>
<body>

<div id="templatemo_wrapper">

	<div id="templatemo_header">
    
    	<div id="site_title"><h1><a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a></h1></div>
       
            <%HttpSession ss=request.getSession();%>
        <p align=right> Welcome <a href=profile.jsp><%=ss.getAttribute("id")%></a>&nbsp; <a href=index.jsp>Logout</a> </p>
                    
            <div id="templatemo_menu" class="ddsmoothmenu">    
                
                    <ul>
                        		<li><a href="useraccount.jsp" class="selected">Myaccount</a>
                    <ul>
                        <li><a href="http://www.templatemo.com/page/1">Projects</a></li>
                        <li><a href="http://www.templatemo.com/page/2">Teams</a></li>
                        <li><a href="http://www.templatemo.com/page/3">Tasks</a></li>
                  	</ul>
              	</li>
          		<li><a href="generate.jsp">Timesheets</a></li>
		<li><a href="report.jsp">Reports</a></li>
    		<li><a href="">Mails/Team Members</a></li> 
              	<li><a href="contact.jsp">Contact</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
        
    </div> <!-- end of header -->
       
    
    <div id="templatemo_main">
       	<h2> List OF Reports </h2>
        <div class="col_w630 float_l">
        	
             <div id="contact_form">

                <form method="post" name="contact" action="editemployee.jsp">
                    <input type="hidden" name="post" value="Send" />
                    <table>  
                        
                        <tr><th>Sr.No</th><th>Reports</th></tr>
                        <tr><td>1</td><td><a href="report_allprojects.jsp">List all Projects in IPMS</a></td></tr>
                        <tr><td>2</td><td><a href="report_as_perskills.jsp">List Projects as per skill </a></td></tr>
                        <tr><td>3</td><td><a href="report_emp_in1project.jsp">List of Employees working under one Project</a></td></tr>
                        <tr><td>4</td><td><a href="report_modules_in1project.jsp">Modules in one Project</a></td></tr>
                        <tr><td>5</td><td><a href="report_assg_in1module.jsp">Assignments in one Module</a></td></tr>
                        <tr><td>6</td><td><a href="report_list_of_projects_1emp.jsp">List of all Projects handled by one Employee</a></td></tr>
                        <tr><td>7</td><td><a href="report_listof_modules_1emp.jsp">List of all Modules handled by one Employee</a></td></tr>
                        <tr><td>8</td><td><a href="report_assignments_of_1emp.jsp">List of all Assignment handled by one Employee</a></td></tr>
                        <tr><td>9</td><td><a href="report_emp_asperskill.jsp">List Employees as per skills</a></td></tr>
                        
                    </table>
                </form>
        
            </div> 
        </div>
        <div id="templatemo_sidebar">
      
        <div class="col_w300 float_r">
            <div class="sb_box">
            	<h3>Additional tasks</h3>
                <ul class="tmo_list">
                	
                    <li><a href="addclient.jsp">Add Client</a></li>
                    <li><a href="projectdetails.jsp">New Project</a></li>
                    <li><a href="moduledetails.jsp">Add Module</a></li>
                    <li><a href="assignmentdetails.jsp">Add Assignment</a></li>
				</ul>
            </div>       
            <div class="cleaner"></div>
		</div>            
            <div class="col_fw_last">
                <h4>Our Location</h4>
                <div id="map"><a class="pirobox" href="images/map_big.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit."><img src="images/map_thumb.jpg" alt="Image" /></a></div>                
            </div>
        </div>
	    <div class="cleaner"></div>
    </div> <!-- end of main -->
</div>

<div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
        Copyright © 2048 <a href="#">Your Company Name</a> | 
        <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by 
        <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
        <div class="cleaner"></div>
    </div>
</div> 
  
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>

