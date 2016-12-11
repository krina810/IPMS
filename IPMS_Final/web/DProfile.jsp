<%-- 
    Document   : DProfile
    Created on : Apr 27, 2014, 12:03:34 AM
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

<script type='text/javascript' src="scripts/validate.js"> 

</script> 


</head>
<body>

<div id="templatemo_wrapper">

	<div id="templatemo_header">
    
    	<div id="site_title"><h1><a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a></h1></div>
       
            <%HttpSession ss=request.getSession();%>
            <%String a=(String)ss.getAttribute("id");%>
        <p align="right"> Welcome <a href=PprofileMtd><%=ss.getAttribute("id")%></a>&nbsp; <a href=index.jsp>Logout</a> </p>
                    
            <div id="templatemo_menu" class="ddsmoothmenu">           
            <ul>
                        		<li><a href="Pmanageraccount.jsp" class="selected">My Dashboard</a>
                    
              	</li>
          		<li><a href="report_list_of_projects_MG.jsp">My Projects</a>
                    
              	</li>
              	
              
		<li><a href="report.jsp">Reports</a></li>
    		<li><a href="PMyMailComposer.jsp">Mails</a></li> 
       </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
        
    </div>
    
    <div id="templatemo_main">
       	<h2>Profile:</h2>
        <div class="col_w630 float_l">
        	
             <div id="contact_form">

                <form method="post" name="contact" action="ProfileeditMtd">
                    <input type="hidden" name="post" value="Send" />
                    <table class="cleaner h10">  
                        
                        <%
                           
                          try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            out.println("<h1>Driver not found:" + e + e.getMessage() + "</h1>" );
        }
         try{
         
          Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms");  
       
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from Employee where FirstName='"+a+"'");
        int count=0;
        while(rs.next())
        {     
                        %>
 <tr>
<td> Name:</td><td><input type="text" id="author" name="author" value="<%=rs.getString("FirstName")%>" onblur="Empty(document.getElementById('author'), 'Textbox is empty, Please Enter a Value');" />
    <input type="text" id="author1" name="author1" value="<%=rs.getString("MiddleName")%>"  onblur="Empty(document.getElementById('author1'), 'Textbox is empty, Please Enter a Value');" />
    <input type="text" id="author2" name="author2" value="<%=rs.getString("LastName")%>"  onblur="Empty(document.getElementById('author2'), 'Textbox is empty, Please Enter a Value');"/></td></tr>

                                         <!--<div class="cleaner h10"></div>-->
<tr>
<td>Email:</td><td><input type="text" id="email" name="email" value="<%=rs.getString("EmailID")%>" onblur="emailValidator(document.getElementById('email'),'This is Not a Valid Email');"  /></td></tr>
                   
            <!--<div class="cleaner h10"></div>-->
<tr>
<td>Address:</td><td><textarea id="text" name="text"  onblur="Empty(document.getElementById('text'), 'Textbox is empty, Please Enter a Value');"><%=rs.getString("Address")%></textarea></td></tr>
                    <!--<div class="cleaner h10"></div>-->  
<tr>
<td>Contact no:</td><td><input type="text" id="contactno" name="contact" value="<%=rs.getString("ContactNo")%>"  onblur="onlynumbers(document.getElementById('contactno'));" /></td></tr>
               <!-- <div class="cleaner h10"></div>-->
<%--<tr>
<td>Department:</td><td><input type="text" id="dep" name="dep" value="<%=rs.getString("FName")%>" onblur="Empty(document.getElementById('dep'), 'Textbox is empty, Please Enter a Value');" /></td></tr>
            <!-- <div class="cleaner h10"></div>-->--%>
<tr>
<td>Designation:</td><td><input type="text" id="desg" name="desg" value="<%=rs.getString("Designation")%>" onblur="Empty(document.getElementById('desg'), 'Textbox is empty, Please Enter a Value');" /></td></tr>
                   <!-- <div class="cleaner h10"></div>--> 
                    
<tr>
<td>DOB:</td><td><input type="text" name="dob" id="dob" value="<%=rs.getString("DateofBirth")%>"  </td></tr>
                 <!-- <div class="cleaner h10"></div>-->
<tr>
<td>DOJ:</td><td> <input type="text" name="doj" id="doj" value="<%=rs.getString("DateofJoining")%>" </td></tr>
                    <!--<div class="cleaner h10"></div>-->  
<tr>
<td>Skillset:</td><td><input type="text" name="skill" id="skill" value="<%=rs.getString("Skillset")%>" </td></tr>

    
<tr align="left"><td><input type="submit" class="submit_btn" name="act" id="submit" value="Update" /></td><td>
<input type="reset" class="submit_btn" name="reset" id="reset" value="Reset" a /></td></tr>

<%}%>
<%} catch(Exception e){e.printStackTrace();}%>
                    </table>
                </form>
        
            </div> 
        </div>
        <div id="templatemo_sidebar" style="vertical-align: text-top;">
      
        <div class="col_w300 float_l"  style="vertical-align: text-top;">
              
            <div class="cleaner"></div>
		</div>            
            <div class="col_fw_last">
                
                <div id="map"><a class="pirobox" href="images/page1_img1.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit."><img src="images/page1_img1.jpg" alt="Image" /></a></div>                
            </div>
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
  
<div align=center></div></body>
</html>