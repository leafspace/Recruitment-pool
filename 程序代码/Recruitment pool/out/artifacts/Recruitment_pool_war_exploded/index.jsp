<%@ page import="cn.leafspace.ToolBean.User" %>
<%@ page import="cn.leafspace.Database.Factory.DatabaseProxyFactory" %>
<%@ page import="cn.leafspace.ToolBean.CompanyInformation" %>
<%@ page import="cn.leafspace.Database.Interface.DatabaseProxyInterface" %>
<%@ page import="java.util.ArrayList" %>
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
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }

        int index = 1;
        if (request.getParameter("index") != null) {
            try {
                index = Integer.parseInt(request.getParameter("index"));
            } catch (NumberFormatException exception) {
            }
        }

        DatabaseProxyFactory databaseProxyFactory = new DatabaseProxyFactory();
        DatabaseProxyInterface databaseProxyInterface = databaseProxyFactory.getDatabaseProxy("MySQL");
        ArrayList<CompanyInformation> companyInformations = databaseProxyInterface.getInformationList();

        int pageSize = 15;
        int pageLength = 0;
        if (companyInformations.size() % pageSize != 0) {
            pageLength = companyInformations.size() / pageSize + 1;
        } else {
            pageLength = companyInformations.size() / pageSize;
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

            <div id="page-wrapper">
                <div class="panel-group tool-tips widget-shadow" id="accordion" role="tablist" aria-multiselectable="true">
                    <h4 class="title2"> 招聘信息 :</h4>

                    <%
                        for (int i = (index - 1) * pageSize; i < Math.min(companyInformations.size(), index * pageSize - 1); ++i) {
                            String companyCondition = companyInformations.get(i).getCompanyCondition();
                            String companyWork = companyInformations.get(i).getCompanyWork();
                            String companyWelfare = companyInformations.get(i).getCompanyWelfare();
                    %>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion"
                                        href="#collapse<%=companyInformations.get(i).getCompanyID()%>" aria-expanded="true" aria-controls="collapse<%=companyInformations.get(i).getCompanyID()%>">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion"
                                           href="#collapse<%=companyInformations.get(i).getCompanyID()%>" aria-expanded="true" aria-controls="collapse<%=companyInformations.get(i).getCompanyID()%>">
                                            <%=companyInformations.get(i).getCompanyName()%> (<%=companyInformations.get(i).getCompanyAddress()%>)
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse<%=companyInformations.get(i).getCompanyID()%>" class="panel-collapse collapse" role="tabpanel"
                                     aria-labelledby="heading<%=companyInformations.get(i).getCompanyID()%>">
                                    <div class="panel-body">
                                        <table class="table table-bordered">
                                            <thead>
                                            <tr>
                                                <th style="width: 8%;">薪资范围</th>
                                                <th style="width: 12%;">投递职位</th>
                                                <th>工作条件</th>
                                                <th>岗位职责</th>
                                                <th>公司福利</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td><%=companyInformations.get(i).getCompanySalary()%></td>
                                                <td><%=companyInformations.get(i).getCompanyJobs()%></td>
                                                <td data-container="body" data-toggle="popover"
                                                    data-placement="bottom" data-content="<%=companyInformations.get(i).getCompanyCondition()%>"
                                                    data-original-title="" title="" aria-describedby="popover475398">
                                                    <%=companyCondition.substring(0, Math.min(10, companyCondition.length()))%>...
                                                </td>
                                                <td data-container="body" data-toggle="popover"
                                                    data-placement="bottom" data-content="<%=companyInformations.get(i).getCompanyWork()%>"
                                                    data-original-title="" title="" aria-describedby="popover475398">
                                                    <%=companyWork.substring(0, Math.min(10, companyWork.length()))%>...
                                                </td>
                                                <td data-container="body" data-toggle="popover"
                                                    data-placement="bottom" data-content="<%=companyInformations.get(i).getCompanyWelfare()%>"
                                                    data-original-title="" title="" aria-describedby="popover475398">
                                                    <%=companyWelfare.substring(0, Math.min(10, companyWelfare.length()))%>...
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                        <script>
                                            $(function () {
                                                $('[data-toggle="popover"]').popover()
                                            })
                                        </script>
                                    </div>
                                </div>
                            </div>
                    <%
                        }
                    %>
                </div>

                <div style="width: 100%; height: 50px; margin-bottom: 100px;">
                    <nav style="float: right;">
                        <ul class="pagination pagination-lg">
                            <%
                                if (index <= 1) {
                            %>
                                    <li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                            <%
                                } else {
                            %>
                                    <li><a href="index.jsp?index=<%=index - 1%>" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                            <%
                                }

                                for (int i = index - 3; i <= index + 3; ++i) {
                                    if (i >= 1 && i <= pageLength) {
                            %>
                                        <li><a href="index.jsp?index=<%=i%>"><%=i%></a></li>
                            <%
                                    }
                                }

                                if (index >= pageLength) {
                            %>
                                    <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                            <%
                            } else {
                            %>
                                    <li><a href="index.jsp?index=<%=index + 1%>" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                            <%
                                }
                            %>
                        </ul>
                    </nav>
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