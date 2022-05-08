<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main Page</title>
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
.style2 {font-weight: bold}
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
          <h2><span>Welcome User <%=(String)application.getAttribute("uname") %>..</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		 <p align="justify"><font size="3" color="red">With the significant increase in the volume, velocity, and variety of user data (e.g., user generated data) in online social networks, there have been attempted to design new ways of collecting and analyzing such big data. For example, social bots have been used to perform automated analytical services and provide users with improved quality of service. However, malicious soceial bots have also been used to disseminate false information (e.g., fake news), and this can result in real-world consequences. Therefore, detecting and removing malicious social bots in online social networks is crucial. The most existing detection methods of malicious social bots analyze the quantitative features of their behavior. These features are easily imitated by social bots; thereby resulting in low accuracy of the analysis. A novel method of detecting malicious social bots, including both features selection based on the transition probability of clickstream sequences and semi-supervised clustering, is presented in this paper. This method not only analyzes transition probability of user behavior clickstreams but also considers the time feature of behavior. Findings from our experiments on real online social network platforms demonstrate that the detection accuracy for different types of malicious social bots by the detection method of malicious social bots based on transition probability of user behavior clickstreams increases by an average of 12.8%, in comparison to the detection method based on quantitative analysis of user behavior. </font></p>
		  
	    </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style2">
            <li><a href="UserMain.jsp">Home</a></li>
			<li><a href="User_Profile.jsp">View Your Profile</a></li>
			<li><a href="User_SearchFriends.jsp">Search Friends Based On Community</a></li>
			<li><a href="User_FriendRequests.jsp">View Friend Request and Response</a></li>
			<li><a href="User_MyFriends.jsp">View My Friends Based On Community</a></li>
			<li><a href="User_CreateTweet.jsp">Create Tweet Topic</a></li>
			<li><a href="User_SearchTweet.jsp">Search Tweet Topic by keyword</a></li>
			<li><a href="User_AllMyTweets.jsp">View all your Tweets Topic withr Interactions </a></li>
			<li><a href="User_ViewFriendsTweetDetails.jsp">View all your Friends Tweet Topic with other Interactions and scores</a></li>
			<li><a href="User_ViewSpamTweetDetails.jsp">Show all Spamming behaviors friends Topics with profile</a></li>
			<li><a href="UserLogin.jsp">Logout</a></li>
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
