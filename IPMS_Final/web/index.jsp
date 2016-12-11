<%-- 
    Document   : index
    Created on : Jan 22, 2014, 4:07:42 PM
    Author     : Krina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Chrome Web Design</title>
<meta name="keywords" content="Chrome Web Design, CSS, HTML, free template, piecemaker" />
<meta name="description" content="Chrome Web Design is a free website template integrated with PieceMaker 3D Flash Slider." />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

	<script type="text/javascript" src="scripts/swfobject/swfobject.js"></script>
    <script type="text/javascript">
      var flashvars = {};
      flashvars.cssSource = "css/piecemaker.css";
      flashvars.xmlSource = "piecemaker.xml";
		
      var params = {};
      params.play = "true";
      params.menu = "false";
      params.scale = "showall";
      params.wmode = "transparent";
      params.allowfullscreen = "true";
      params.allowscriptaccess = "always";
      params.allownetworking = "all";
	  
      swfobject.embedSWF('piecemaker.swf', 'piecemaker', '1160', '500', '10', null, flashvars,    
      params, null);
    
    </script>

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="scripts/jquery.min.js"></script>
<script type="text/javascript" src="scripts/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

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
        
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
              	<li><a href="index.jsp" class="selected">Home</a></li>
          		<li><a href="about.jsp">About</a>
                <!--    <ul>
                        <li><a href="http://www.templatemo.com/page/1">Background</a></li>
                        <li><a href="http://www.templatemo.com/page/2">Our Team</a></li>
                        <li><a href="http://www.templatemo.com/page/3">Management</a></li>
                  	</ul>-->
              	</li>
          		
              	<li><a href="contact.jsp">Contact</a></li>
<li>
            <form name="form" method="post" action="Login">
                <table>
 <tr>        	<td><b>Username</b></td> <td><input name="user" type="text" /></td>
</tr>    
<tr>        	<td><b>Password</b></td> <td><p><input name="pass" type="password" /></p></td></tr>
    
<tr>	<td><input name="login" type="submit" value="Login"/></td>    <td></td>
</tr>
    </table>
              </form>
</li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
        
    </div> <!-- end of header -->
    
    <div id="templatemo_fw">
        <div id="piecemaker">
          
        </div>
	</div>
    
      
<div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
        Copyright © 2048 <a href="#">IPMS</a>
        <div class="cleaner"></div>
    </div>
</div> 
</div>
  </body>
</html>