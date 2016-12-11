<%-- 
    Document   : Aregisteruser
    Created on : May 1, 2014, 1:44:20 AM
    Author     : Krina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

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
<script type='text/javascript' src="scripts/validate.js"> 

</script> 




</head>
<body>

<div id="templatemo_wrapper">

	<div id="templatemo_header">
    
    	<div id="site_title"><h1><a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a></h1></div>
       
          <%HttpSession ss=request.getSession();%>
       <p align="right">  Welcome <a href=ProfileMtd> <%=ss.getAttribute("id")%> </a>&nbsp; 
            <a href="index.jsp">Logout</a> </p>

                    
            <div id="templatemo_menu" class="ddsmoothmenu">           
            <ul>
                <li><a href="Adminaccount.jsp" class="selected">Myaccount</a>
                    <%-- <ul>
                        <li><a href="http://www.templatemo.com/page/1">Projects</a></li>
                        <li><a href="http://www.templatemo.com/page/2">Teams</a></li>
                        <li><a href="http://www.templatemo.com/page/3">Tasks</a></li>
                  	</ul>--%>
                   
              	</li>
          		<%--<li><a href="portfolio.jsp">Portfolio</a>
                    <ul>
                        <li><a href="http://www.templatemo.com/page/1">Web Design</a></li>
                        <li><a href="http://www.templatemo.com/page/2">Multimedia</a></li>
                        <li><a href="http://www.templatemo.com/page/3">3D Animations</a></li>
                        <li><a href="http://www.templatemo.com/page/4">Templates</a></li>
                  	</ul>
              	</li>--%>
                        <li><a href="MyMailComposer.jsp">Mails</a>
                	<%--<ul>
                        <li><a href="http://www.templatemo.com/page/1">Useful Tips</a></li>
                        <li><a href="http://www.templatemo.com/page/2">Archives</a></li>
                        <li><a href="http://www.templatemo.com/page/3">Popular Posts</a></li>
                        <li><a href="http://www.templatemo.com/page/4">Comments</a></li>
                        <li><a href="http://www.templatemo.com/page/5">Authors</a></li>
                  	</ul>--%>
                </li>
              	<li><a href="contact.jsp">Contact</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
    </div> <!-- end of header -->
       
    
    <div id="templatemo_main">
       
        <div class="col_w630 float_l">
        	
             <div id="contact_form">
                 <form name="form" method="post" action="LoginCreate">
               <table align="center">
                    <tr><td colspan="2"><h2>Create Login for Users:</h2></td></tr>
 <tr>        	<td><b>Username</b></td> <td><input name="user" type="text" /></td>
</tr>    
<tr>        	<td><b>Password</b></td> <td><p><input name="pass" type="password" /></p></td></tr>
<tr>        	<td><b>Designation</b></td> 
 <td><Select id="desg" name="desg" onblur="Empty(document.getElementById('desg'), 'Textbox is empty, Please Enter a Value');" />
    <option></option>
    <option>ProjectManager</option>
    <option>TeamLeader</option>
    <option>Developer</option>
    <option>Client</option>
 </td>
</tr> 
<tr>	<td><input name="login" type="submit" value="Login"/></td>    <td></td>
</tr>
    </table>
                   
              </form>        
            </div> 
        </div>
        <div id="templatemo_sidebar" style="vertical-align: text-top;">
      
        <div class="col_w300 float_l"  style="vertical-align: text-top;">
             <div class="sb_box">
            	<h3>Additional tasks</h3>
                <ul class="tmo_list">
                	<li><a href="Aaddproject.jsp">Add Project</a></li>
                    <li><a href="Aaddclient.jsp">Add Client</a></li>
                    <li><a href="Aviewproject.jsp">View Project</a></li>
                    <li><a href="Aviewemployee.jsp">View Employee</a></li>
                    <li><a href="Aviewclient.jsp">View Client</a></li>
                   <%-- <li><a href="moduledetails.jsp">Add Module</a></li>
                    <li><a href="assignmentdetails.jsp">Add Assignment</a></li>--%>
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
       
        <div class="cleaner"></div>
    </div>
</div> 
  
</div></body>
</html>