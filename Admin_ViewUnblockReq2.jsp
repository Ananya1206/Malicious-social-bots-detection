<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Unblock Requests Page</title>
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
.style1 {color: #000000}
.style5 {
	font-size: 18px;
	font-weight: bold;
}
.style6 {
	font-size: 14px;
	font-weight: bold;
}
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
          <h2><span>Process Unblock Requests .</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  <%
		  String community=request.getParameter("community");
		   String uname=request.getParameter("uname");
		  
		  %>
		  		<table width="592" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      
					  
					  <td  width="100" valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><strong>Request Date</strong></div></td>
                      <td  width="81"  valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style5"><strong>Request Status</strong></div></td>
                    </tr>
                    
                    <%
					  
					  	
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0,j=0,k=0;
						try 
						{
							String query="select * from unblock_req where uname='"+uname+"' and community='"+community+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								k=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								
								
								
								j++;
						   
						   						 
						   	
								
							String query1="select * from user where username='"+uname+"' and community='"+community+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while ( rs1.next() )
					   		{
								i=rs1.getInt(1);
								
						
					%>
                    <tr>
                      
        				  
                     	
					  <td height="0" align="center"  valign="middle"><div align="center" class="style6">
                            <span class="style1">
                            <strong><%out.println(s3);%></strong>
                            </span></div></td>
					  			
                      <%
						if(s4.equalsIgnoreCase("Waiting"))
						{
						
						%>
                      <td valign="middle" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style5 style20 style30 style37">
                          <div align="center" class="style20 style37 style46"><a href="Admin_UnBlockAccount.jsp?id=<%=i%>&id1=<%=k%>&uname=<%=uname%>&community=<%=community%>" class="style6" style="color:#CC0033" title="Click to Unblock"><strong>Waiting</strong></a></div>
                      </div></td>
                      <%
						}
						else
						{
						%>
                      <td width="17" height="0" align="center"  valign="middle"><div align="center" class="style22"  style="color:#006633">
                        <strong><%out.println(s4);%></strong>
                      </div></td>
                      <%
						}
						
						%>
                    </tr>
                    <%
						}
						
					}
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
		  			<p>&nbsp;</p>
					<p>&nbsp;</p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14">&nbsp;</p>
					<table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="right"><a href="Admin_ViewUnblockReq1.jsp?community=<%=community%>" class="style14">Back</a></div></td>
            </tr>
          </table>
                          
		  
		  
		  
		  
		  
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
