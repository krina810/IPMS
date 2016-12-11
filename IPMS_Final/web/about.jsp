<%-- 
    Document   : about
    Created on : Jan 22, 2014, 4:14:04 PM
    Author     : Krina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>About Chrome Web Design</title>
        <meta name="keywords" content="About Chrome, Web Design, CSS, HTML, free template, templatemo" />
        <meta name="description" content="Chrome Company - free website template provided by templatemo.com" />
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

            swfobject.embedSWF('piecemaker.swf', 'piecemaker', '960', '500', '10', null, flashvars,
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
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp" class="selected">About</a>
                            <ul>
                                <li><a href="http://www.templatemo.com/page/1">Background</a></li>
                                <li><a href="http://www.templatemo.com/page/2">Our Team</a></li>
                                <li><a href="http://www.templatemo.com/page/3">Management</a></li>
                            </ul>
                        </li>

                        <li><a href="contact.jsp">Contact</a></li>
                    </ul>
                    <br style="clear: left" />
                </div> <!-- end of templatemo_menu -->

            </div> <!-- end of header -->

            <div id="templatemo_main">
                <div class="col_fw">
                    <div class="col_w460 float_l">

                        <div class="cleaner h20"></div>
                        <p><em>  &nbsp;&nbsp;&nbsp;&nbsp;<font style="font-size:200%;">P</font>roject Management has developed in order to plan, coordinate and control the complex and diverse activities of modern industrial and commercial projects. All projects share one common characteristic – the projection of ideas and activities into new endeavors.
                            </em></p>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;The purpose of project management is to foresee or predict as many dangers and problems as possible in spite of all the risks. The ever present element of risk and uncertainty means that events and tasks leading to completion can never be foretold with the absolute accuracy. For some complex or advanced projects, even the possibility of successful completion might be serious doubt.Project management can  involve the following activities:</p>
                        <ul class="tmo_list">
                            <li>Planning – deciding what is to be done;</li>
                            <li>Organizing – making arrangements;</li>
                            <li>Staffing – selecting the right people for the job;</li>
                            <li>Directing – giving instructions;</li>
                            <li>Monitoring – checking on progress;</li>
                            <li>Controlling – taking action to remedy hold ups;</li>
                            <li>Innovation – coming up with new solutions;</li>
                            <li>Representing – liaising with users.</li></ul>
                        <div class="cleaner h20"></div>

                    </div>
                    <div class="col_w460 float_r">
                        <h2>Our Services</h2>
                        <div class="col_w460">
                            <div class="fp_service_box fp_c1">
                                <img src="images/b2bdashboard_icon.png" alt="Image 1" height="65px"/>
                                <a href="#"> office dashboard</a>A dashboard that contains one or more pages displaying
                                a variety of reusable reports and information to be used across a large group 
                                or the entire organization. </div>
                        </div>
                        <div class="col_w460">
                            <div class="fp_service_box fp_c2">
                                <img src="images/report_icon.png" alt="Image 2" height="65px"/>
                                <a href="#"> Reports</a>See whats happening overtime through time-sheets and employee generated reports.
                            </div>
                        </div>
                        <div class="col_w460">
                            <div class="fp_service_box fp_c3">
                                <img src="images/calendar_icon.png" alt="Image 3" height="75px"/>
                                <a href="#">Calender</a>a system of organizing days for social, religious,
                                commercial or administrative purposes.  </div>
                        </div>
                    
                            <div class="fp_service_box fp_c4">
                                <img src="images/timesheet_alerticon.png" alt="Image 4"height="65px" />
                                <a href="#"> Time-sheets and alerts</a> a method for recording the amount 
                                of a worker's time to be spent on each job.</div>
                        
                    </div>
                    <div class="cleaner"></div>
                </div>

                <div class="cleaner"></div>
            </div>

            <div id="templatemo_footer_wrapper">
                <div id="templatemo_footer">
                    Copyright © 2048 <a href="#">IPMS</a>
                    <div class="cleaner"></div>
                </div>
            </div> 

    </body>
</html>