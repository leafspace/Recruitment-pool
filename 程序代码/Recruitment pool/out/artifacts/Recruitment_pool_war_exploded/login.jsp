<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>招聘信息管理系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
		SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<link href="css/font-awesome.css" rel="stylesheet">
		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/modernizr.custom.js"></script>
		<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
		<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="js/wow.min.js"></script>
			<script>
				 new WOW().init();
			</script>
		<script src="js/metisMenu.min.js"></script>
		<script src="js/custom.js"></script>
		<link href="css/custom.css" rel="stylesheet">
	</head>

    <%
        String errorInfo = "";
        if (request.getAttribute("errorInfo") != null) {
            errorInfo = (String) request.getAttribute("errorInfo");
        }
    %>

	<body class="cbp-spmenu-push">
		<div class="main-content">
            <div class=" sidebar" role="navigation">
                <div class="navbar-collapse">
                    <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
                        <ul class="nav" id="side-menu">
                            <li onclick="alert('请先登陆！')">
                                <a href="#" class="active"><i class="fa fa-home nav_icon"></i>监视面板</a>
                            </li>
                            <li onclick="alert('请先登陆！')">
                                <a href="#"><i class="fa fa-cogs nav_icon"></i>操作控制  <span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li onclick="alert('请先登陆！')">
                                        <a href="#">添加招聘方信息</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>

			<div class="sticky-header header-section ">
				<div class="header-left">
					<button id="showLeftPush"><i class="fa fa-bars"></i></button>
					<div class="logo">
						<a href="index.jsp">
							<h1>招聘信息管理系统</h1>
							<span>leafspace</span>
						</a>
					</div>

					<div class="clearfix"> </div>
				</div>
				<div class="header-right"></div>
				<div class="clearfix"> </div>
			</div>

			<div id="page-wrapper">
				<div class="main-page login-page ">
					<h3 class="title1">登&nbsp;&nbsp;陆</h3>
					<div class="widget-shadow">
						<div class="login-top">
							<h4>欢迎来到管理系统 ! <br> 没有账号? <a href="signup.html">  注 册 »</a> </h4>
						</div>
						<div class="login-body">
							<form action="login.do" method="post">
								<input type="text" class="user" name="username" placeholder="输入你的用户名..." required="">
								<input type="password" name="password" class="lock" placeholder="请输入密码...">
                                <span style="color: #FF0000;"><%=errorInfo%></span>
								<input type="submit" name="button" value="登陆">
								<div class="forgot-grid">
									<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>记住 我</label>
									<div class="forgot">
										<a href="#">忘记密码?</a>
									</div>
									<div class="clearfix"> </div>
								</div>
							</form>
						</div>
					</div>

					<div class="login-page-bottom">
						<h5> - OR -</h5>
						<div class="social-btn"><a href="#"><i class="fa fa-facebook"></i><i>Sign In with Facebook</i></a></div>
						<div class="social-btn sb-two"><a href="#"><i class="fa fa-twitter"></i><i>Sign In with Twitter</i></a></div>
					</div>
				</div>
			</div>

			<div class="footer">
			   <p>Copyright &copy; 2016.Company name All rights reserved.More Templates
                   <a href="#" target="_blank" title="leafspace">leafspace</a> - Collect from
                   <a href="#" title="Management System" target="_blank">Management System</a>
               </p>
			</div>

		</div>

			<script src="js/classie.js"></script>
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

		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
	   <script src="js/bootstrap.js"> </script>
	</body>
</html>