<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ANURG COLEE</title>
<meta name="keywords"
	content="free design template, download web templates, Crazy Website, XHTML, CSS" />
<meta name="description"
	content="Crazy - Free CSS Template, Free XHTML CSS Design Layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="fullsize/fullsize.css" media="screen" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="fullsize/jquery.js"></script>
<script type="text/javascript"
	src="fullsize/jquery.fullsize.minified.js"></script>
<script language="javascript" type="text/javascript">
$(function(){
				$("div.templatemo_gallery img").fullsize();
			});
</script>
<script type="text/javascript" src="Functions.js"></script>
<style>
#middle img{
height:500px; width:750px
}</style>
</head>
<body>
	<div id="templatemo_container">
		<div id="templatemo_content_area">
			<div id="templaetmo_left">
				<div id="templatemo_logo_area">
					<img src="images/ll.png" height="150" width="300">
						<div id="templaetmo_logo"></div>
						<div id="templaetmo_slogan"></div>
				</div>

				<div class="templatemo_menu">
					<ul>
						<li><a href="#" class="current" onclick="homepage('home')">Home</a></li>
						<li><a href="#" onclick="homepage('login')">Login</a></li>
						<li><a href="#" onclick="homepage('register')">Register</a></li>
						<li><a href="#" onclick="homepage('about')">About Us</a></li>
						<li><a href="#" onclick="homepage('contact')">Contact</a></li>
					</ul>
				</div>

			</div>
			<!-- End Of left -->

			<!--             <div id="templaetmo_right"> -->
			<!--             	<div id="templaetmo_right_top"> -->
			<center>
				&nbsp
				<br></br><br></br>
				<h1></h1>
				
					<h3></h3>
					
			
					 <!--                 </div> -->
			</center>

			<div id="middle" style="top: 190px; position: absolute; left: 470px;">
			
			
					<%if(request.getAttribute("suc")!=null) {%>
Registration Successful<%} %>
<%if(request.getAttribute("log")!=null) {%>
Invalid User.....<%} %>
			
			</div>



		</div>
		<!-- End Of right mid-->




	</div>
	<!-- End Of right-->

	</div>
	</div>
</html>