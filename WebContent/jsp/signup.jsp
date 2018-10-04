<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Sign Up</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Ultra Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="/BI-OLAP/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="/BI-OLAP/css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link rel="icon" href="/BI-OLAP/favicon.ico" type="image/x-icon" >
<!-- font-awesome icons -->
<link href="/BI-OLAP/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="/BI-OLAP/js/jquery-1.11.1.min.js"></script>
<script src="/BI-OLAP/js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='http://fonts.useso.com/css?family=Comfortaa:400,700,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Muli:400,300,300italic,400italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!-- Metis Menu -->
<script src="/BI-OLAP/js/metisMenu.min.js"></script>
<script src="/BI-OLAP/js/custom.js"></script>
<link href="/BI-OLAP/css/custom.css" rel="stylesheet">
<script>
	var __adobewebfontsappname__ = "dreamweaver"
</script>
<script type="text/javascript">
var accountOk,nicknameOk,passwordOk,repswOk;
function nicknameForm(){
	var Nickname = document.getElementById("nickname").value;
	if(Nickname.length<1 || Nickname ==null || Nickname.length>20){
		document.getElementById("labnickname").innerHTML = "wrong";
		//nickname.focus();
		nicknameOk = 0;
	} else{
		checkNickname();
	}
}
function passwordForm(){
	var Password = document.getElementById("password").value;
	if(Password.length<6 || Password ==null || Password.length>16){
		document.getElementById("labpassword").innerHTML = "wrong";
		passwordOk = 0;
	} else{
		document.getElementById("labpassword").innerHTML = "ok";
		passwordOk = 1;
	}
}
function repswForm(){
	var Repsw = document.getElementById("repassword").value;
	var Password = document.getElementById("password").value; 
	if(Repsw != Password){
		document.getElementById("labrepsw").innerHTML = "not same";
		repswOk = 0;
	} else{
		document.getElementById("labrepsw").innerHTML = "ok";
		repswOk = 1;
	}
}

</script>

<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
	<div class="main-content" style="width:1800px; height:800px; overflow:scroll;">
		<!--left-fixed -navigation-->
		<div class="sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right dev-page-sidebar mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" id="cbp-spmenu-s1">
					<div class="scrollbar scrollbar1">
						<ul class="nav" id="side-menu">
							<li>
						<a href="/BI-OLAP/jsp/visitor-index.jsp"><i class="fa fa-home nav_icon"></i>Whole Analysis</a>
						</li>
							<li>
								<a href="#"><i class="fa fa-shopping-cart nav_icon"></i>Sales Analysis</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-truck nav_icon"></i>Warehouse Analysis</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-group nav_icon"></i>Customer Analysis</a>
							</li>
							
							<li>
								<a href="#"><i class="fa fa-user nav_icon"></i>Personnel Analysis</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-search nav_icon"></i>Search</a>
								<!-- //nav-second-level -->
							</li>
							<li>
								<a href="#"><i class="fa fa-cogs nav_icon"></i>Adminitration</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-file-text-o nav_icon"></i>About</a>
								<!-- //nav-second-level -->
							</li>
						</ul>
					</div>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--logo -->
				<div class="logo">
					<a href="/BI-OLAP/jsp/visitor-index.jsp">
					<h1>FoodMart</h1></a>
				</div>
				<!--//logo-->
				
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
					<!--toggle button start-->
					
					<div class="search-box">	
				    </div>
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<div class="clearfix"> </div>
				<!--toggle button end-->
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<div id="page-wrapper">
			<div class="main-page" >
				<div class="sign-form">
					<h4>Sign Up</h4>
					<h5><strong>Create</strong> your account.</h5>
					<form action="/BI-OLAP/SignupServlet" method="post" enctype="multipart/form-data" name="form1">
						<input type="text"  name="nickname" id="nickname" placeholder="Choose a nickname" required>
						<input type="text" class="pass" name="email" id="email" placeholder="Email address" required>
						<input type="password" name="password" id="password"  placeholder="Password" required>
						<input type="password" class="pass" name="repwd" id="repwd" placeholder="Confirm password" required>
						<span>Choose a role:</span>
						<input type="radio" name="role" value="1"id="radio1" checked="true"><label for="radio"><span for="">Admin</span></label> 
					    <input type="radio" name="role" value="0" id="radio2"><label for="radio"><span>User</span></label> </label>
						<span>Upload a head show:</span></label><input type="file" name="userpho" id="userpho" required>
						<span><input type="checkbox" required>I accept Flash's terms and conditions Sign Up</span>
						<button class="btn btn-info btn-block" type="submit">Sign up</button>
						<p class="center-block mg-t mg-b text-center">Already have an account?</p>	
					</form>
					<a href="/BI-OLAP/jsp/login.jsp" class="button1"><button class="btn btn-info btn-block" type="submit">Login</button></a>
				</div>
		</div>	
	</div>	
	<!--typo-ends-->
	
			<div class="copy-section">
		<p>Copyright &copy; 2016.Flash All rights reserved.</p>
		</div>
	</div>
			<!-- Classie -->
				<script src="/BI-OLAP/js/classie.js"></script>
				<script>
					var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
						showLeftPush = document.getElementById( 'showLeftPush' ),
						body = document.body;
						
					showLeftPush.onclick = function() {
						classie.toggle( this, 'active' );
						classie.toggle( body, 'cbp-spmenu-push-toright' );
						classie.toggle( menuLeft, 'cbp-spmenu-open' );
						disableOther( 'showLeftPush' );
					};
					

					function disableOther( button ) {
						if( button !== 'showLeftPush' ) {
							classie.toggle( showLeftPush, 'disabled' );
						}
					}
				</script>
			<!-- Bootstrap Core JavaScript --> 
				
				<script type="text/javascript" src="/BI-OLAP/js/bootstrap.min.js"></script>
				<!--scrolling js-->
				<script src="/BI-OLAP/js/jquery.nicescroll.js"></script>
				<script src="/BI-OLAP/js/scripts.js"></script>
				<!--//scrolling js-->
				<!-- candlestick -->
		<script type="text/javascript" src="/BI-OLAP/js/jquery.jqcandlestick.min.js"></script>
		<link rel="stylesheet" type="text/css" href="/BI-OLAP/css/jqcandlestick.css" />
		<!-- //candlestick -->
		

			
			
</body>
</html>