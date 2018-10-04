<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Ultra Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="/BI-OLAP/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="/BI-OLAP/css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link rel="icon" href="favicon.ico" type="image/x-icon" >
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
<!--//Metis Menu -->

</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
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
	<c:if test="${!empty requestScope.msgcode }">
	<%
		int msgcode = Integer.parseInt(request.getAttribute("msgcode").toString());
		switch(msgcode){
		case 101:
			out.print("<script>alert('wrong');</script>");
			break;
		case 103:
			out.print("<script>alert('have online');</script>");
			break;
		default:
			break;
		}
	%>
</c:if>
		<div id="page-wrapper">
			<div class="main-page">
				<div class="login-form">
					<h4>Login</h4>
					<h5><strong>Welcome</strong> login to get started!</h5>
					<form name="form1" method="post" action="/BI-OLAP/LoginServlet">
					  <c:if test="${empty requestScope.nickname }">
					   <input type="text" name="nickname" class="form-control" id="nickname" placeholder="nickname" required>
				       </c:if>
				      <c:if test="${!empty requestScope.nickname }">
					   <input type="text" name="nickname" class="form-control" id="nickname" placeholder="nickname"
						value="${requestScope.nickname }">
				      </c:if>
						
						<input type="password" class="pass" name="password" id="password"  placeholder="Password" required>
						<span class="check-left"><input type="checkbox">Remember me</span>
						<span class="check-right"><a href="#">Forgot password?</a></span>
						<div class="clearfix"></div>
						<button class="btn btn-info btn-block" type="submit">Sign in</button>
						<p class="center-block mg-t mg-b">Don't have an account?
						<a href="/BI-OLAP/jsp/signup.jsp">Signup here.</a>
						</p>
					</form>
				</div>
		</div>	
	</div>	
	<!--typo-ends-->
	
			<div class="copy-section">
		<p>Copyright &copy; 2016.Company name All rights reserved.</p>
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
</body>
</html>