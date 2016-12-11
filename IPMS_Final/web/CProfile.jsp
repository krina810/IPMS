<%-- 
    Document   : CProfile
    Created on : Apr 27, 2014, 12:59:32 AM
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
        <p align=right> Welcome <a href=CProfile.jsp><%=ss.getAttribute("id")%></a>&nbsp; <a href=index.jsp>Logout</a> </p>
                    
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
       	<h2>Profile:</h2>
        <div class="col_w630 float_l">
        	
             <div id="contact_form">

                <form method="post" name="contact" action="EmployeeaddMtd">
                    <input type="hidden" name="post" value="Send" />
                    <table class="cleaner h10">   
 <tr>
<td> Name:</td><td><input type="text" id="author" name="author" value="First Name" onblur="Empty(document.getElementById('author'), 'Textbox is empty, Please Enter a Value');" />
    <input type="text" id="author1" name="author1" value="Middle Name"  onblur="Empty(document.getElementById('author1'), 'Textbox is empty, Please Enter a Value');" />
    <input type="text" id="author2" name="author2" value="Last Name"  onblur="Empty(document.getElementById('author2'), 'Textbox is empty, Please Enter a Value');"/></td></tr>

                                         <!--<div class="cleaner h10"></div>-->
<tr>
<td>Email:</td><td><input type="text" id="email" name="email" onblur="emailValidator(document.getElementById('email'),'This is Not a Valid Email');"  /></td></tr>
                   
            <!--<div class="cleaner h10"></div>-->
<tr>
<td>Address:</td><td><textarea id="text" name="add" onblur="Empty(document.getElementById('text'), 'Textbox is empty, Please Enter a Value');"></textarea></td></tr>
                    <!--<div class="cleaner h10"></div>-->  
<tr>
<td>Contact no:</td><td><input type="text" id="contactno" name="contactno" onblur="onlynumbers(document.getElementById('contactno'));" /></td></tr>
               <!-- <div class="cleaner h10"></div>-->
<tr>
<td>Department:</td><td><input type="text" id="dep" name="dep" onblur="Empty(document.getElementById('dep'), 'Textbox is empty, Please Enter a Value');" /></td></tr>
            <!-- <div class="cleaner h10"></div>-->
<tr>
<td>Designation:</td><td><input type="text" id="desg" name="desg" onblur="Empty(document.getElementById('desg'), 'Textbox is empty, Please Enter a Value');" /></td></tr>
                   <!-- <div class="cleaner h10"></div>--> 
                    
<tr>
<td>DOB:</td><td> <select  name="dobd" id="dobd">
              <option>  </option>
              <option value="1"> 1 </option>
              <option value="2"> 2 </option>
              <option value="3"> 3 </option>
              <option value="4"> 4 </option>
              <option value="5"> 5 </option>
              <option value="6"> 6 </option>
              <option value="7"> 7 </option>
              <option value="8"> 8 </option>
              <option value="9"> 9 </option>
              <option value="10"> 10 </option>
              <option value="11"> 11 </option>
              <option value="12"> 12 </option>
              <option value="13"> 13 </option>
              <option value="14"> 14 </option>
              <option value="15"> 15 </option>
              <option value="16"> 16 </option>
              <option value="17"> 17 </option>
              <option value="18"> 18 </option>
              <option value="19"> 19 </option>
              <option value="20"> 20 </option>
              <option value="21"> 21 </option>
              <option value="22"> 22 </option>
              <option value="23"> 23 </option>
              <option value="24"> 24 </option>
              <option value="25"> 25 </option>
              <option value="26"> 26 </option>
              <option value="27"> 27 </option>
              <option value="28"> 28 </option>
              <option value="29"> 29 </option>
              <option value="30"> 30 </option>
              <option value="31"> 31 </option>
            </select> Day<select  name="dobm" id="dobm">
              <option>  </option>
              <option value="January"> January </option>
              <option value="February"> February </option>
              <option value="March"> March </option>
              <option value="April"> April </option>
              <option value="May"> May </option>
              <option value="June"> June </option>
              <option value="July"> July </option>
              <option value="August"> August </option>
              <option value="September"> September </option>
              <option value="October"> October </option>
              <option value="November"> November </option>
              <option value="December"> December </option>
            </select>  Month <select class="" name="doby" id="doby">
              <option>  </option>
              <option value="2038"> 2038 </option>
              <option value="2037"> 2037 </option>
              <option value="2036"> 2036 </option>
              <option value="2035"> 2035 </option>
              <option value="2034"> 2034 </option>
              <option value="2033"> 2033 </option>
              <option value="2032"> 2032 </option>
              <option value="2031"> 2031 </option>
              <option value="2030"> 2030 </option>
              <option value="2029"> 2029 </option>
              <option value="2028"> 2028 </option>
              <option value="2027"> 2027 </option>
              <option value="2026"> 2026 </option>
              <option value="2025"> 2025 </option>
              <option value="2024"> 2024 </option>
              <option value="2023"> 2023 </option>
              <option value="2022"> 2022 </option>
              <option value="2021"> 2021 </option>
              <option value="2020"> 2020 </option>
              <option value="2019"> 2019 </option>
              <option value="2018"> 2018 </option>
              <option value="2017"> 2017 </option>
              <option value="2016"> 2016 </option>
              <option value="2015"> 2015 </option>
              <option value="2014"> 2014 </option>
              <option value="2013"> 2013 </option>
              <option value="2012"> 2012 </option>
              <option value="2011"> 2011 </option>
              <option value="2010"> 2010 </option>
              <option value="2009"> 2009 </option>
              <option value="2008"> 2008 </option>
              <option value="2007"> 2007 </option>
              <option value="2006"> 2006 </option>
              <option value="2005"> 2005 </option>
              <option value="2004"> 2004 </option>
              <option value="2003"> 2003 </option>
              <option value="2002"> 2002 </option>
              <option value="2001"> 2001 </option>
              <option value="2000"> 2000 </option>
              <option value="1999"> 1999 </option>
              <option value="1998"> 1998 </option>
              <option value="1997"> 1997 </option>
              <option value="1996"> 1996 </option>
              <option value="1995"> 1995 </option>
              <option value="1994"> 1994 </option>
              <option value="1993"> 1993 </option>
              <option value="1992"> 1992 </option>
              <option value="1991"> 1991 </option>
              <option value="1990"> 1990 </option>
              <option value="1989"> 1989 </option>
              <option value="1988"> 1988 </option>
              <option value="1987"> 1987 </option>
              <option value="1986"> 1986 </option>
              <option value="1985"> 1985 </option>
              <option value="1984"> 1984 </option>
              <option value="1983"> 1983 </option>
              <option value="1982"> 1982 </option>
              <option value="1981"> 1981 </option>
              <option value="1980"> 1980 </option>
              <option value="1979"> 1979 </option>
              <option value="1978"> 1978 </option>
              <option value="1977"> 1977 </option>
              <option value="1976"> 1976 </option>
              <option value="1975"> 1975 </option>
              <option value="1974"> 1974 </option>
              <option value="1973"> 1973 </option>
              <option value="1972"> 1972 </option>
              <option value="1971"> 1971 </option>
              <option value="1970"> 1970 </option>
              <option value="1969"> 1969 </option>
              <option value="1968"> 1968 </option>
              <option value="1967"> 1967 </option>
              <option value="1966"> 1966 </option>
              <option value="1965"> 1965 </option>
              <option value="1964"> 1964 </option>
              <option value="1963"> 1963 </option>
              <option value="1962"> 1962 </option>
              <option value="1961"> 1961 </option>
              <option value="1960"> 1960 </option>
              <option value="1959"> 1959 </option>
              <option value="1958"> 1958 </option>
              <option value="1957"> 1957 </option>
              <option value="1956"> 1956 </option>
              <option value="1955"> 1955 </option>
              <option value="1954"> 1954 </option>
              <option value="1953"> 1953 </option>
              <option value="1952"> 1952 </option>
              <option value="1951"> 1951 </option>
              <option value="1950"> 1950 </option>
              <option value="1949"> 1949 </option>
              <option value="1948"> 1948 </option>
              <option value="1947"> 1947 </option>
              <option value="1946"> 1946 </option>
              <option value="1945"> 1945 </option>
              <option value="1944"> 1944 </option>
              <option value="1943"> 1943 </option>
              <option value="1942"> 1942 </option>
              <option value="1941"> 1941 </option>
              <option value="1940"> 1940 </option>
              <option value="1939"> 1939 </option>
              <option value="1938"> 1938 </option>
              <option value="1937"> 1937 </option>
              <option value="1936"> 1936 </option>
              <option value="1935"> 1935 </option>
              <option value="1934"> 1934 </option>
              <option value="1933"> 1933 </option>
              <option value="1932"> 1932 </option>
              <option value="1931"> 1931 </option>
              <option value="1930"> 1930 </option>
              <option value="1929"> 1929 </option>
              <option value="1928"> 1928 </option>
              <option value="1927"> 1927 </option>
              <option value="1926"> 1926 </option>
              <option value="1925"> 1925 </option>
              <option value="1924"> 1924 </option>
              <option value="1923"> 1923 </option>
              <option value="1922"> 1922 </option>
              <option value="1921"> 1921 </option>
              <option value="1920"> 1920 </option>
            </select>
             Year</td></tr>
                 <!-- <div class="cleaner h10"></div>-->
<tr>
<td>DOJ:</td><td> <select  name="dojd" id="dojd">
              <option>  </option>
              <option value="1"> 1 </option>
              <option value="2"> 2 </option>
              <option value="3"> 3 </option>
              <option value="4"> 4 </option>
              <option value="5"> 5 </option>
              <option value="6"> 6 </option>
              <option value="7"> 7 </option>
              <option value="8"> 8 </option>
              <option value="9"> 9 </option>
              <option value="10"> 10 </option>
              <option value="11"> 11 </option>
              <option value="12"> 12 </option>
              <option value="13"> 13 </option>
              <option value="14"> 14 </option>
              <option value="15"> 15 </option>
              <option value="16"> 16 </option>
              <option value="17"> 17 </option>
              <option value="18"> 18 </option>
              <option value="19"> 19 </option>
              <option value="20"> 20 </option>
              <option value="21"> 21 </option>
              <option value="22"> 22 </option>
              <option value="23"> 23 </option>
              <option value="24"> 24 </option>
              <option value="25"> 25 </option>
              <option value="26"> 26 </option>
              <option value="27"> 27 </option>
              <option value="28"> 28 </option>
              <option value="29"> 29 </option>
              <option value="30"> 30 </option>
              <option value="31"> 31 </option>
            </select> Day<select  name="dojm" id="dojm">
              <option>  </option>
              <option value="January"> January </option>
              <option value="February"> February </option>
              <option value="March"> March </option>
              <option value="April"> April </option>
              <option value="May"> May </option>
              <option value="June"> June </option>
              <option value="July"> July </option>
              <option value="August"> August </option>
              <option value="September"> September </option>
              <option value="October"> October </option>
              <option value="November"> November </option>
              <option value="December"> December </option>
            </select>  Month <select  name="dojy" id="dojy">
              <option>  </option>
              <option value="2038"> 2038 </option>
              <option value="2037"> 2037 </option>
              <option value="2036"> 2036 </option>
              <option value="2035"> 2035 </option>
              <option value="2034"> 2034 </option>
              <option value="2033"> 2033 </option>
              <option value="2032"> 2032 </option>
              <option value="2031"> 2031 </option>
              <option value="2030"> 2030 </option>
              <option value="2029"> 2029 </option>
              <option value="2028"> 2028 </option>
              <option value="2027"> 2027 </option>
              <option value="2026"> 2026 </option>
              <option value="2025"> 2025 </option>
              <option value="2024"> 2024 </option>
              <option value="2023"> 2023 </option>
              <option value="2022"> 2022 </option>
              <option value="2021"> 2021 </option>
              <option value="2020"> 2020 </option>
              <option value="2019"> 2019 </option>
              <option value="2018"> 2018 </option>
              <option value="2017"> 2017 </option>
              <option value="2016"> 2016 </option>
              <option value="2015"> 2015 </option>
              <option value="2014"> 2014 </option>
              <option value="2013"> 2013 </option>
              <option value="2012"> 2012 </option>
              <option value="2011"> 2011 </option>
              <option value="2010"> 2010 </option>
              <option value="2009"> 2009 </option>
              <option value="2008"> 2008 </option>
              <option value="2007"> 2007 </option>
              <option value="2006"> 2006 </option>
              <option value="2005"> 2005 </option>
              <option value="2004"> 2004 </option>
              <option value="2003"> 2003 </option>
              <option value="2002"> 2002 </option>
              <option value="2001"> 2001 </option>
              <option value="2000"> 2000 </option>
              <option value="1999"> 1999 </option>
              <option value="1998"> 1998 </option>
              <option value="1997"> 1997 </option>
              <option value="1996"> 1996 </option>
              <option value="1995"> 1995 </option>
              <option value="1994"> 1994 </option>
              <option value="1993"> 1993 </option>
              <option value="1992"> 1992 </option>
              <option value="1991"> 1991 </option>
              <option value="1990"> 1990 </option>
              <option value="1989"> 1989 </option>
              <option value="1988"> 1988 </option>
              <option value="1987"> 1987 </option>
              <option value="1986"> 1986 </option>
              <option value="1985"> 1985 </option>
              <option value="1984"> 1984 </option>
              <option value="1983"> 1983 </option>
              <option value="1982"> 1982 </option>
              <option value="1981"> 1981 </option>
              <option value="1980"> 1980 </option>
              <option value="1979"> 1979 </option>
              <option value="1978"> 1978 </option>
              <option value="1977"> 1977 </option>
              <option value="1976"> 1976 </option>
              <option value="1975"> 1975 </option>
              <option value="1974"> 1974 </option>
              <option value="1973"> 1973 </option>
              <option value="1972"> 1972 </option>
              <option value="1971"> 1971 </option>
              <option value="1970"> 1970 </option>
              <option value="1969"> 1969 </option>
              <option value="1968"> 1968 </option>
              <option value="1967"> 1967 </option>
              <option value="1966"> 1966 </option>
              <option value="1965"> 1965 </option>
              <option value="1964"> 1964 </option>
              <option value="1963"> 1963 </option>
              <option value="1962"> 1962 </option>
              <option value="1961"> 1961 </option>
              <option value="1960"> 1960 </option>
              <option value="1959"> 1959 </option>
              <option value="1958"> 1958 </option>
              <option value="1957"> 1957 </option>
              <option value="1956"> 1956 </option>
              <option value="1955"> 1955 </option>
              <option value="1954"> 1954 </option>
              <option value="1953"> 1953 </option>
              <option value="1952"> 1952 </option>
              <option value="1951"> 1951 </option>
              <option value="1950"> 1950 </option>
              <option value="1949"> 1949 </option>
              <option value="1948"> 1948 </option>
              <option value="1947"> 1947 </option>
              <option value="1946"> 1946 </option>
              <option value="1945"> 1945 </option>
              <option value="1944"> 1944 </option>
              <option value="1943"> 1943 </option>
              <option value="1942"> 1942 </option>
              <option value="1941"> 1941 </option>
              <option value="1940"> 1940 </option>
              <option value="1939"> 1939 </option>
              <option value="1938"> 1938 </option>
              <option value="1937"> 1937 </option>
              <option value="1936"> 1936 </option>
              <option value="1935"> 1935 </option>
              <option value="1934"> 1934 </option>
              <option value="1933"> 1933 </option>
              <option value="1932"> 1932 </option>
              <option value="1931"> 1931 </option>
              <option value="1930"> 1930 </option>
              <option value="1929"> 1929 </option>
              <option value="1928"> 1928 </option>
              <option value="1927"> 1927 </option>
              <option value="1926"> 1926 </option>
              <option value="1925"> 1925 </option>
              <option value="1924"> 1924 </option>
              <option value="1923"> 1923 </option>
              <option value="1922"> 1922 </option>
              <option value="1921"> 1921 </option>
              <option value="1920"> 1920 </option>
            </select>
            Year</td></tr>
                    <!--<div class="cleaner h10"></div>-->  
<tr>
<td>Skillset:</td><td>
<input type="checkbox" id="input_22_0" name="Skill" value=".Net" />
                            .Net &nbsp
<input type="checkbox" id="input_22_2" name="Skill" value="Java" />
              Java &nbsp
<input type="checkbox" id="input_22_3" name="Skill" value="HTML" />
              Html &nbsp
<input type="checkbox" id="input_22_4" name="Skill" value="C/C++" />
              C/C++ &nbsp
<input type="checkbox" id="input_22_5" name="Skill" value="App Development" /> App Development &nbsp</br>
<input type="checkbox" id="input_22_6" name="Skill" value="Android"/>
              Android &nbsp
 <input type="checkbox" id="input_22_7" name="Skill" value="Ios" />
              Ios &nbsp
<input type="checkbox" id="input_22_8" name="Skill" value="Windows" />
              Windows &nbsp</td></tr>
                    <div class="cleaner h10"></div>
<tr align="left"><td><input type="submit" class="submit_btn" name="submit" id="submit" value="Submit" /></td><td>
<input type="reset" class="submit_btn" name="reset" id="reset" value="Reset" a /></td></tr>
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
        Copyright © 2048 <a href="#">Your Company Name</a> | 
        <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by 
        <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
        <div class="cleaner"></div>
    </div>
</div> 
  
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
