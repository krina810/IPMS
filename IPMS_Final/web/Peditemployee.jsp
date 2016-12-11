<%-- 
    Document   : Peditemployee
    Created on : Apr 27, 2014, 10:56:34 PM
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
});

</script>
<script type='text/javascript'> 
    function Empty(element, AlertMessage){ 
        if(element.value.trim()=== ""){ 
            alert(AlertMessage); element.focus(); return false; }	
        
        return true; } 
   
    function emailValidator(element, alertMsg){ 
        var emailvalid = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/; 
        if(element.value.match(emailvalid)) { 
            
            return true;
        }else{ 
            alert(alertMsg); element.focus(); return false; } }
    
    function onlynumbers(inputtxt)  
{  
  var phoneno = /^\d{10}$/;  
  if(inputtxt.value.match(phoneno))  
        {  
      return true;  
        }  
      else  
        {  
        alert("Enter 10 digits...");  
        return false;  
        }  
}

</script> 




</head>
<body>

<div id="templatemo_wrapper">

	<div id="templatemo_header">
    
    	<div id="site_title"><h1><a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a></h1></div>
       
           <%HttpSession ss=request.getSession();%>
       <p align="right">  Welcome <a href="Pprofile.jsp"><%=ss.getAttribute("id")%></a>&nbsp; 
            <a href="index.jsp">Logout</a> </p>

                    
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
       	<h2>Employee Information </h2>
        <div class="col_w630 float_l">
        	
             <div id="contact_form">
                 <form method="post" name="contact" action="Pveiwemployee.jsp">
                    <input type="hidden" name="post" value="Send" />
                    <table class="cleaner h10">  
                 <table>
                    <%  
                         String a=request.getParameter("eid").toString();
                          try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            out.println("<h1>Driver not found:" + e + e.getMessage() + "</h1>" );
        }
        try{
        Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms" );
            Statement stmt1 = conn.createStatement();
            ResultSet rs;
            rs = stmt1.executeQuery("select * from Employee where EmployeeID="+a+""); 
        
                         while(rs.next())
                     {%>
  <tr><td>EmpID</td><td><%=a%></td></tr>
                     
                 <tr>
 <td> Name:</td><td><%=rs.getString("FirstName")%>&nbsp;
    <%=rs.getString("MiddleName")%>&nbsp;
     <%=rs.getString("LastName")%></td></tr>

                  <!--  <div class="cleaner h10"></div>-->


<tr>
<td>Email:</td><td><%=rs.getString("EmailID")%></td></tr> 
                   <!-- <div class="cleaner h10"></div>-->
<%--<tr>
<td>Address:</td><td><%=rs.getString("Address")%>
   </td></tr>--%>
                  <!--  <div class="cleaner h10"></div> --> 
<tr>
<td>Contact no:</td><td><%=rs.getString("ContactNo")%></td></tr>
              <!--  <div class="cleaner h10"></div>-->
<%--<tr>
<td>Department ID:</td><td><input type="text" id="dep" name="dep" value="<%=rs.getString("DepartmentID")%>" /></td></tr>
           <!--  <div class="cleaner h10"></div>-->--%>
<tr>
<td>Designation:</td><td><%=rs.getString("Designation")%></td></tr>
                 <!--   <div class="cleaner h10"></div> -->
<%--<tr>
<td>DateOfBirth:</td><td><input type="text" id="dob" name="dob" value="<%=rs.getString("DateofBirth")%>"/></td></tr>
                  <!--  <div class="cleaner h10"></div>-->
<tr>
<td>DateOfJoining:</td><td><input type="text" id="doj" name="doj" value="<%=rs.getString("DateofJoining")%>"/></td></tr>
                   <!-- <div class="cleaner h10"></div>  --> --%>
<tr>
<td>Skillset:</td><td><%=rs.getString("Skillset")%></td></tr>

<%}}
catch(Exception e)
    {
         e.printStackTrace();
          }
%>
</table>
<br> 
    <input type="submit" value="OK" name="act" />
     <%-- <input type="submit" value="Delete" name="act" />
    <input type="reset"  name="reset" id="reset" value="Reset"/>--%>

</form>
            </div> 
        </div>
        <div id="templatemo_sidebar" style="vertical-align: text-top;">
      
        <div class="col_w300 float_l"  style="vertical-align: text-top;">
            <div class="sb_box">
            	<h3>Additional tasks</h3>
                <ul class="tmo_list">
             		 <li><a href="Pveiwemployee.jsp">View TeamLeader</a></li>
                       <!-- <li><a href="Pveiwclient.jsp">View Clients</a></li>	-->	
                        <li><a href="Pmoduledetails.jsp">Add Module</a></li>
                        <li><a href="Pstatus.jsp">Progress</a></li>
                
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
  
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
