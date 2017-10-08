<%@ page import="cn.leafspace.ToolBean.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title>招聘信息管理系统</title>
        <link rel="icon" href="favicon.ico" type="image/x-icon"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    %>

    <body class="cbp-spmenu-push">
        <div class="main-content">
            <div class=" sidebar" role="navigation">
                <div class="navbar-collapse">
                    <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
                        <ul class="nav" id="side-menu">
                            <li>
                                <a href="index.jsp" class="active"><i class="fa fa-home nav_icon"></i>监视面板</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-cogs nav_icon"></i>操作控制  <span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li>
                                        <a href="editMessage.jsp">添加招聘方信息</a>
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
                <div class="header-right">
                    <div class="profile_details">
                        <ul>
                            <li class="dropdown profile_details_drop">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <div class="profile_img">
                                        <span class="prfil-img"><img src="images/a.png" alt=""> </span>
                                        <div class="user-name">
                                            <p><%=user.getUsername()%></p>
                                            <span>管理员</span>
                                        </div>
                                        <i class="fa fa-angle-down lnr"></i>
                                        <i class="fa fa-angle-up lnr"></i>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                                <ul class="dropdown-menu drp-mnu">
                                    <li> <a href="#"><i class="fa fa-cog"></i> 设置</a> </li>
                                    <li> <a href="#"><i class="fa fa-user"></i> 简述</a> </li>
                                    <li> <a href="#"><i class="fa fa-sign-out"></i> 注销</a> </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>

            <div id="page-wrapper" style="min-height: 819px;">
                <div class="main-page compose">
                    <div class="col-md-8 compose-right widget-shadow" style="width: 90%">
                        <div class="panel-default">
                            <div class="panel-heading">
                                添加新的招聘信息
                            </div>
                            <div class="panel-body">
                                <div class="alert alert-info">
                                    添加新的招聘信息到管理信息系统
                                </div>
                                <form class="com-mail" action="editMessage.do" method="post">
                                    <input type="text" name="companyName" class="form-control1 control3" placeholder="公司名称 :">
                                    <input type="text" name="companyAddress" class="form-control1 control3" placeholder="公司地址 :">
                                    <div style="width: 100%">
                                        <input type="text" name="companyJobs" class="form-control1 control3" style="width: 75%; float: left;" placeholder="投递职位 :">
                                        <input type="text" name="companySalary" class="form-control1 control3" style="width: 20%; float: right" placeholder="薪水范围 :">
                                    </div>
                                    <textarea rows="6" name="companyCondition" class="form-control1 control2" style="margin-bottom: 15px;" placeholder="工作条件 :"></textarea>
                                    <textarea rows="6" name="companyWork" class="form-control1 control2" style="margin-bottom: 15px;" placeholder="岗位职责 :"></textarea>
                                    <textarea rows="6" name="companyWelfare" class="form-control1 control2" style="margin-bottom: 15px;" placeholder="公司福利 :"></textarea>
                                    <input type="submit" value="添加信息" />
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
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