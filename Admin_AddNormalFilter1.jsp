<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Normal Filter Status Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style4 {color: #CC3333}
.style5 {color: #006600}
.style6 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><small>Detection of Malicious Social Bots Using<br />
        Learning Automata With URL Features in Twitter Network</small></a></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="UserLogin.jsp"><span>Users</span></a></li>
          <li><a href="AdminLogin.jsp"><span>Twitter Admin</span></a></li>
          
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /><span><big>Detection of Malicious Social Bots Using Learning Automata With URL Features in Twitter Network </big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><big>Detection of Malicious Social Bots Using Learning Automata With URL Features in Twitter Network </big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><big>Detection of Malicious Social Bots Using Learning Automata With URL Features in Twitter Network </big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Add Normal Filter Status..</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  <p>
                      
                      <span class="style18">
                      <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String title=null,filtername=null,location1=null,sk=null,bin = "", paramname=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("filtername"))
							{
								filtername=multi.getParameter(paramname);
								
							}
							
							
						}
							
						
						
						
		
						FileInputStream fs1 = null;
			 			String query1="select * from normal_filter  where filtername='"+filtername+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                      </span>
          <p class="style37 style7 style4">Filter Name Already Exist..</p>							
							
							
				
                    </p>
			        <p>&nbsp;</p>
			        <p><a href="Admin_AddNormalFilter.jsp" class="style15 style38">Back</a><a href="Admin_AddNormalFilter.jsp" class="style8 style15"></a></p>
			        <p>
                      <%
				
					   }
					   else
					   {
					   
					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String dt = strDate + "   " + strTime;
			
					  
										if(!filtername.equals(""))
										{
									
									
									
												String strQuery2 = "insert into normal_filter(filtername) values('"+filtername+"')";
												connection.createStatement().executeUpdate(strQuery2);
												
							
												
														%><p class="style37 style7 style5">Filter Added Successfully..</p>		
											
											
                    </p>
			        <p>&nbsp;</p>
			        <p><a href="Admin_AddNormalFilter.jsp" class="style15 style38">Back</a></p>
			        <%
											 }
											 else
											 {
											 	
												
														%>
			        <p class="style37 style7 style6">Please Input Filter Name..</p>
			        <p class="style37">&nbsp;</p>
			        <a href="Admin_AddNormalFilter.jsp" class="style15 style38">Back</a>
			        </p>
			        <%
					
					
												}
					
						}
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
                    </p>
		  
		  
		  
		  
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="AdminMain.jsp">Home</a></li>
			<li><a href="AdminLogin.jsp">Logout</a></li>
            
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
</body>
</html>
