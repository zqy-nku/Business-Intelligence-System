<%@ page language="java" contentType="text/html; charset=GB18030" 
pageEncoding="GB18030"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Sales Analysis</title>
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
<c:if test="${empty sessionScope.user }">
	<script>
		alert("PLEASE LOGIN :)");
		location="visitor-index.jsp";
	</script>
</c:if>
	<div class="main-content" style="width:1600px; height:800px; overflow:scroll;">
		<!--left-fixed -navigation-->
		<div class="sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right dev-page-sidebar mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" id="cbp-spmenu-s1">
						<div class="scrollbar scrollbar1">
						<ul class="nav" id="side-menu">
							<li>
						<a href="/BI-OLAP/WholeServlet"><i class="fa fa-home nav_icon"></i>Whole Analysis</a>
						</li>
							<li>
								<a href="/BI-OLAP/jsp/sales.jsp"><i class="fa fa-shopping-cart nav_icon"></i>Sales Analysis</a>
							</li>
							<li>
								<a href="/BI-OLAP/jsp/warehouse.jsp"><i class="fa fa-truck nav_icon"></i>Warehouse Analysis</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-group nav_icon"></i>Customer Analysis</a>
							</li>
							
							<li>
								<a href="#"><i class="fa fa-user nav_icon"></i>Personnel Analysis</a>
							</li>
							<li>
								<a href="Search.html"><i class="fa fa-search nav_icon"></i>Search</a>
								<!-- //nav-second-level -->
							</li>
							<li>
								<a href="Adminitration.html"><i class="fa fa-cogs nav_icon"></i>Adminitration</a>
							</li>
							<li>
								<a href="About.html"><i class="fa fa-file-text-o nav_icon"></i>About</a>
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
					<a href="/BI-OLAP/jsp/index.jsp">
					<h1>FoodMart</h1></a>
				</div>
				<!--//logo-->
				<div class="user-right">
					<div class="profile_details_left"><!--notifications of menu start -->
						<div class="profile_details">		
							<ul>
								<li class="dropdown profile_details_drop">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
										<div class="profile_img">	
											<span class="prfil-img"><img  name="userpho" "width="40" height="40" src="/BI-OLAP/upload/images/photo/${sessionScope.user.userpho }"/> </span> 
											<div class="clearfix"></div>	
										</div>	
									</a>
									<ul class="dropdown-menu drp-mnu">
		 
										<li> <a href="#"><i class="fa fa-user"></i> ${sessionScope.user.nickname }</a> </li> 
										<li> <a href="/BI-OLAP/LogoutServlet"><i class="fa fa-sign-out"></i> Logout</a> </li>
										
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="profile_medile"><!--notifications of menu start -->
				<ul class="nofitications-dropdown">
					<li class="dropdown head-dpdn">
			<i class="fa fa-gift"></i><span class=""> Welcome</span>			
					</li>
				</ul>
			</div>
			<div class="header-right">
					<!--toggle button start-->
					<div class="search-box">
					<form class="input">
						<input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31">
					</form>
				</div>
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<div class="clearfix"> </div>
				<!--toggle button end-->
			</div>
            
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- 选择measures、dimension 提交表单传值-->
		<script>
					function check1(objName){
					var o=document.getElementsByName(objName)
					for(i=0;i<o.length;i++)if(o[i].checked)return;
					alert("请至少选择一个选择度量值！");
						}
					function check2(objName){
						var o=document.getElementsByName(objName)
						for(i=0;i<o.length;i++)if(o[i].checked)return;
						alert("请至少选择一个维度！");
					}
		</script>
        <form name="form-sales" method='POST' action='/BI-OLAP/SalesServlet' >
		<div id="page-wrapper">
			<div class="main-page">
				<div class="hight-chat">
					<h2>Sales Analysis</h2>
                      	<div class="">
				<div class="bs-docs-example" >
						<table class="table">
							  <tbody>
								<tr>
								  <td><h4 style="font-weight: bold">Measures:</h4>
                                    <div class="padder">
		          <div class="wrapper bg-white b-b">
				  <br>
				  <!-- checkbox value可以改动 -->
				    <label>
					<input name=chk1 value=m1 type=checkbox id=m1 checked="true">Store sales &nbsp
					<input name=chk1 value=m2 type=checkbox id=m2 checked="true">Store cost  &nbsp
					<input name=chk1 value=m3 type=checkbox id=m3 checked="true">Unit sales  &nbsp
					</label>
					
					</div>
                        </td>					  
					</tr>
					<tr>
						<td>
                             <h4 style="font-weight: bold">Dimension:</h4>  
                             <div class="wrapper bg-white b-b">                              
                               <br>
                                    <label>
                                      <input name=chk2 value="d1" type=checkbox id=d1 checked="true">Customer Dim  &nbsp   
                                      <input name=chk2 value="d2" type=checkbox id=d2 checked="true">Product Dim    &nbsp 
                                      <input name=chk2 value="d3" type=checkbox id=d3 checked="true">Store Dim      &nbsp
                                      <input name=chk2 value="d4" type=checkbox id=d4 checked="true">Promotion Dim   &nbsp  
                                      <input name=chk2 value="d5" type=checkbox id=d5 checked="true">Time Dim        &nbsp&nbsp&nbsp&nbsp&nbsp
                                      
                                      <input value="Start Analysis"  onclick="check1('chk1'),check2('chk2')" type=submit>                                     
                                    </label>                                      
                                 </div>
                                  </td>
								</tr>
							  </tbody>
							</table>
                    </div>
                    </div>
                    </form>
                      
              </div>
            <!-- PASTE above -->
          </div>
        </div>
        <!-- /右侧白色内容 -->
                    
					
					<div class="clearfix"></div>
				</div>
				
		</div>	
	</div>	
	
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
				<!-- candlestick -->
		<script type="text/javascript" src="/BI-OLAP/js/jquery.jqcandlestick.min.js"></script>
         <script type="text/javascript">
        +function ($) {
          $(function(){
            // class
            $(document).on('click', '[data-toggle^="class"]', function(e){
              e && e.preventDefault();
              console.log('abc');
              var $this = $(e.target), $class , $target, $tmp, $classes, $targets;
              !$this.data('toggle') && ($this = $this.closest('[data-toggle^="class"]'));
              $class = $this.data()['toggle'];
              $target = $this.data('target') || $this.attr('href');
              $class && ($tmp = $class.split(':')[1]) && ($classes = $tmp.split(','));
              $target && ($targets = $target.split(','));
              $classes && $classes.length && $.each($targets, function( index, value ) {
                if ( $classes[index].indexOf( '*' ) !== -1 ) {
                  var patt = new RegExp( '\\s' + 
                      $classes[index].
                        replace( /\*/g, '[A-Za-z0-9-_]+' ).
                        split( ' ' ).
                        join( '\\s|\\s' ) + 
                      '\\s', 'g' );
                  $($this).each( function ( i, it ) {
                    var cn = ' ' + it.className + ' ';
                    while ( patt.test( cn ) ) {
                      cn = cn.replace( patt, ' ' );
                    }
                    it.className = $.trim( cn );
                  });
                }
                ($targets[index] !='#') && $($targets[index]).toggleClass($classes[index]) || $this.toggleClass($classes[index]);
              });
              $this.toggleClass('active');
            });
			//标签页
			$('#myTab a').click(function (e) {
			  e.preventDefault();
			  $(this).tab('show');
             })
			
		   $('a[data-toggle="tab"]').on('shown', function (e) {
			  e.target // activated tab
			  e.relatedTarget // previous tab
			})
			
          });
        }(jQuery);
		
      </script>
		<link rel="stylesheet" type="text/css" href="/BI-OLAP/css/jqcandlestick.css" />
		<!-- //candlestick -->
</body>

</html>