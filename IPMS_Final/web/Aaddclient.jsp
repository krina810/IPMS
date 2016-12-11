<%-- 
    Document   : Aaddclient
    Created on : Apr 26, 2014, 5:57:23 PM
    Author     : Krina
--%>

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
<script type='text/javascript' src="scripts/validate.js"> 
</script>
</head>
<body>

<div id="templatemo_wrapper">

	<div id="templatemo_header">
    
    	<div id="site_title"><h1><a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a></h1></div>
       
            <%HttpSession ss=request.getSession();%>
        <p align=right> Welcome <a href=ProfileMtd><%=ss.getAttribute("id")%></a>&nbsp; <a href=index.jsp>Logout</a> </p>
                    
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
       	<h2>Add Clients in IPMS</h2>
     <div class="col_w630 float_l">
        	
             <div id="contact_form">
                <form method="post" name="contact" action="ClientMtd">
                    <input type="hidden" name="post" value="Send" />
<table class="cleaner h10">
<%--<tr>
<td>Client ID:</td><td><input type="text" id="cid" name="cid" onblur="Empty(document.getElementById('cid'), 'Textbox is empty, Please Enter a Value');"/></td></tr>
                    <!--<div class="cleaner h10"></div>-->--%>
<tr><td>Company Name:</td><td><input type="text" id="cmpnyname" name="cmpnyname" onblur="Empty(document.getElementById('cmpnyname'), 'Textbox is empty, Please Enter a Value');"/></td></tr>
                  <!--  <div class="cleaner h10"></div>-->
<tr><td>Address:</td><td><textarea id="add" name="add" rows="0" cols="0" onblur="Empty(document.getElementById('add'), 'Textbox is empty, Please Enter a Value');"></textarea></td></tr>
                   <!-- <div class="cleaner h10"></div>-->  
                                
<tr><td>Country:</td><td><input type="text" id="country" name="country" onblur="Empty(document.getElementById('country'), 'Textbox is empty, Please Enter a Value');"/></td></tr>
            <!-- <div class="cleaner h10"></div>-->
<tr><td>State:</td><td><input type="text" id="state" name="state" onblur="Empty(document.getElementById('state'), 'Textbox is empty, Please Enter a Value');"/></td></tr>
                   <!-- <div class="cleaner h10"></div>-->
<tr><td>City:</td><td><input type="text" id="city" name="city" onblur="Empty(document.getElementById('city'), 'Textbox is empty, Please Enter a Value');" /></td></tr>
                   <!--<div class="cleaner h10"></div>--> 
<tr><td>Project ID:</td><td><input type="text" id="pid" name="pid" onblur="Empty(document.getElementById('pid'), 'Textbox is empty, Please Enter a Value');"/></td></tr>
                    <!--<div class="cleaner h10"></div>-->
<tr><td>Contact Person Name:</td><td><input type="text" id="author" name="author" onblur="Empty(document.getElementById('author'), 'Textbox is empty, Please Enter a Value');"  />
       <%-- <input type="text" id="author1" name="author1" <%--onblur="Empty(document.getElementById('author1'), 'Textbox is empty, Please Enter a Value');"--%> />
       <%-- <input type="text" id="author2" name="author2" onblur="Empty(document.getElementById('author2'), 'Textbox is empty, Please Enter a Value');"/></td></tr>
<div class="cleaner h10"></div>--%>
<tr><td>Email:</td><td><input type="text" id="email" name="email" onblur="emailValidator(document.getElementById('email'),'This is Not a Valid Email');"  /></td></tr>
                   <!-- <div class="cleaner h10"></div>-->

<tr><td>Contact no(1):</td><td><input type="text" id="contactno1" name="contactno1" onblur="onlynumbers(document.getElementById('contactno1'));" /></td></tr>
<tr><td>Contact no(2):</td><td><input type="text" id="contactno2" name="contactno2" onblur="onlynumbers(document.getElementById('contactno2'));" /></td></tr>
<!--<div class="cleaner h10"></div>-->
<tr align="left"><td><input type="submit" class="submit_btn" name="submit" id="submit" value="Submit" /></td><td>
<input type="reset" class="submit_btn" name="reset" id="reset" value="Reset"  /></td></tr>
        </table>        </form>
        
            </div> 
        </div>
 <div id="templatemo_sidebar">
      
        <div class="col_w300 float_r">
             <div class="sb_box">
            	<h3>Additional tasks</h3>
                <ul class="tmo_list">
                	<li><a href="Aaddemployee.jsp">Add Employee</a></li>
                    <li><a href="Aaddproject.jsp">Add Project</a></li>
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
	    <div class="cleaner"></div>    </div> <!-- end of main -->
</div>

<div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
        Copyright © 2048 <a href="#">Your Company Name</a> | 
        <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by 
        hiya
        <div class="cleaner"></div>
    </div>
</div> 
  
</body>
</html>