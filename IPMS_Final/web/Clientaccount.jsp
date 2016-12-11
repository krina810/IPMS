<%-- 
    Document   : Clientaccount
    Created on : Apr 26, 2014, 3:05:00 PM
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
});

</script>

</head>
<body>

<div id="templatemo_wrapper">

	<div id="templatemo_header">
    
    	<div id="site_title"><h1><a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a></h1></div>
       
           <%HttpSession ss=request.getSession();%>
            <%String a=ss.getAttribute("id").toString();%>
            
        <p align=right> Welcome <a href=Cprofile.jsp><%=a%></a>&nbsp; <a href=index.jsp>Logout</a> </p>
                    
            <div id="templatemo_menu" class="ddsmoothmenu">           
            <ul>
                        		<li><a href="Clientaccount.jsp" class="selected">Myaccount</a>
                	
                                            <li><a href="CMyMailComposer.jsp">Mails</a>
                	
                </li>
              	
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
        
    </div> <!-- end of header -->
       
    
    <div id="templatemo_main">
       	<h2>  </h2>
        <div class="col_w630 float_l">
        	 <div id="contact_form">
                     <form name="contact" method="post" action="Progress.jsp"/>
                         <input type="hidden" name="post" value="Send" />
                          <table>
                   
                     <%  try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            out.println("<h1>Driver not found:" + e + e.getMessage() + "</h1>" );
        }%>
        <% 
        Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms" );
            Statement stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery("Select ProjectID from Project where ClientID='"+a+"'"); 
       String ids;
         
        %>
        <tr><td> Status of your Project:</td></tr>
<tr>
<td>Select Project:</td><td><select  name="pid" id="pid">
        
               <% while(rs.next()){ %>
                                 
            <%ids=rs.getString("ProjectID");%>
                                    <option value="<%=ids%>"><%=ids%></option>
                                   
              
              <% } %></td></tr>
              <tr><td><input type="submit" name="status" value="View Status"/></td></tr>
                 </table>
              </form>
             
              
              <hr/>
              See Prototypes:<br>
               
                      <%
                       try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            out.println("<h1>Driver not found:" + e + e.getMessage() + "</h1>" );
        }
        
           try{
               //String st=request.getParameter("pid");
               String st="p01";
            Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ipms_demo","sa", "hiyaipms" );
            Statement stm = con.createStatement();
            ResultSet rs1;
            rs1 = stm.executeQuery("Select Url from prototype where ProjectID='"+st+"'"); 
            
             while(rs1.next())
             {
                 String client_url=rs1.getString("Url");
                 %>
                 <a  href = "<%=client_url%>" target = "_blank"/><%=client_url%><br>

                 <%
             }
             
           }
             catch(Exception e){}
                 %>
                   
              
        </div></div>
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
