<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教务管理系统</title>
	<link href="<%=request.getContextPath()%>/res/plugins/fullPage/jquery.fullPage.css" rel="stylesheet"/>
	<link href="<%=request.getContextPath()%>/res/plugins/bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="<%=request.getContextPath()%>/res/plugins/material-design-iconic-font-2.2.0/css/material-design-iconic-font.min.css" rel="stylesheet"/>
	<link href="<%=request.getContextPath()%>/res/plugins/waves-0.7.5/waves.min.css" rel="stylesheet"/>
	<link href="<%=request.getContextPath()%>/res/plugins/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet"/>
	<link href="<%=request.getContextPath()%>/res/css/admin/admin.css" rel="stylesheet"/>
	<!--    <link rel="stylesheet" href="../css/jquery.pagination.css" />-->
	<!--    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>-->
	<!--    <script src="../js/jquery.pagination.min.js"></script>-->

	<link href="<%=request.getContextPath()%>/res/plugins/bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="<%=request.getContextPath()%>/res/plugins/material-design-iconic-font-2.2.0/css/material-design-iconic-font.min.css" rel="stylesheet"/>
	<link href="<%=request.getContextPath()%>/res/plugins/bootstrap-table-1.11.0/bootstrap-table.min.css" rel="stylesheet"/>
	<link href="<%=request.getContextPath()%>/res/plugins/waves-0.7.5/waves.min.css" rel="stylesheet"/>
	<link href="<%=request.getContextPath()%>/res/plugins/jquery-confirm/jquery-confirm.min.css" rel="stylesheet"/>
	<link href="<%=request.getContextPath()%>/res/plugins/select2/css/select2.min.css" rel="stylesheet"/>

	<link href="<%=request.getContextPath()%>/res/css/admin/common.css" rel="stylesheet"/>
	<style>
		/** skins **/
		#zheng-upms-server #header {background: #3A5357;}
		#zheng-upms-server .content_tab{background:  #3A5357;}
		#zheng-upms-server .s-profile>a{background: url(<%=request.getContextPath()%>/res/res/images/admin/zheng-upms.png) left top no-repeat;}

		#zheng-cms-admin #header {background: #455EC5;}
		#zheng-cms-admin .content_tab{background: #455EC5;}
		#zheng-cms-admin .s-profile>a{background: url(<%=request.getContextPath()%>/res/res/images/admin/zheng-cms.png) left top no-repeat;}

		#zheng-pay-admin #header {background: #F06292;}
		#zheng-pay-admin .content_tab{background: #F06292;}
		#zheng-pay-admin .s-profile>a{background: url(<%=request.getContextPath()%>/res/res/images/admin/zheng-pay.png) left top no-repeat;}

		#zheng-ucenter-home #header {background: #6539B4;}
		#zheng-ucenter-home .content_tab{background: #6539B4;}
		#zheng-ucenter-home .s-profile>a{background: url(<%=request.getContextPath()%>/res/res/images/admin/zheng-ucenter.png) left top no-repeat;}

		#zheng-oss-web #header {background: #0B8DE5;}
		#zheng-oss-web .content_tab{background: #0B8DE5;}
		#zheng-oss-web .s-profile>a{background: url(<%=request.getContextPath()%>/res/res/images/admin/zheng-oss.png) left top no-repeat;}

		/*#test #header {background: test;}*/
		/*#test .content_tab{background: test;}*/
		/*#test .s-profile>a{background: url(test) left top no-repeat;}*/
	</style>
	<style>
		* {
			margin: 0;
			padding: 0;
		}

		body {
			font-family: "微软雅黑";
			background: #eee;
		}

		button {
			display: inline-block;
			padding: 6px 12px;
			font-weight: 400;
			line-height: 1.42857143;
			text-align: center;
			vertical-align: middle;
			cursor: pointer;
			border: 1px solid transparent;
			border-radius: 4px;
			border-color: #28a4c9;
			color: #fff;
			background-color: #5bc0de;
			margin: 20px 20px 0 0;
		}

		.box {
			width: 900px;
			margin: 100px auto 0;
			height: 34px;
		}



		.page {
			width: 700px;
		}

		.info {
			width: 200px;
			height: 34px;
			line-height: 34px;
		}

		.fl {
			float: left;
		}
	</style>
</head>
<body>

<header id="header">
	<ul id="menu">
		<li id="guide" class="line-trigger">
			<div class="line-wrap">
				<div class="line top"></div>
				<div class="line center"></div>
				<div class="line bottom"></div>
			</div>
		</li>
		<li id="logo" class="hidden-xs">
			<a href="/studentLogOut">
				<%--				             <img src="../images/admin/logo.png"/>--%>
			</a>
			<!--            <span id="system_title">考试管理系统</span>-->
			<span style="color: #fff; height:33px; line-height: 33px; font-size: 16px;">后台管理系统</span>
		</li>
		<li class="pull-right">
			<ul class="hi-menu">
				<li class="dropdown">
					<a class="waves-effect waves-light" data-toggle="dropdown" href="javascript:;">
						<i class="him-icon zmdi zmdi-more-vert"></i>
					</a>
					<ul class="dropdown-menu dm-icon pull-right">

						<li>
							<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-run"></i> 退出登录</a>
						</li>
					</ul>
				</li>
			</ul>
		</li>
	</ul>



</header>
<section id="main">
	<!-- 左侧导航区 -->
	<aside id="sidebar">
		<!-- 个人资料区 -->
		<div class="s-profile">


		</div>
		<!-- /个人资料区 -->
		<!-- 菜单区 -->
		<ul class="main-menu">

			<li>
				<a class="waves-effect" href="<%=request.getContextPath()%>/query.Course"><i class="zmdi zmdi-home"></i>课程管理</a>
			</li>

			<li>
				<a class="waves-effect" href="<%=request.getContextPath()%>/query.do"><i class="zmdi zmdi-home"></i>用户管理</a>
			</li>

			<li>
				<a class="waves-effect" href="<%=request.getContextPath()%>/query.UserCourse"><i class="zmdi zmdi-home"></i>用户课程管理</a>
			</li>

			<li>
				<a class="waves-effect" href="<%=request.getContextPath()%>/modify/modifypassword.jsp"><i class="zmdi zmdi-home"></i>修改密码</a>
			</li>

			<li>
				<a class="waves-effect" href="<%=request.getContextPath()%>/"><i class="zmdi zmdi-home"></i>返回首页</a>
			</li>



		<%--			<li>--%>
			<%--				<a class="waves-effect" href="/admin/music?my_songName="><i class="zmdi zmdi-home"></i>电影管理</a>--%>
			<%--			</li>--%>


			<%--			<li>--%>
			<%--				<a class="waves-effect" href="/admin/singer"><i class="zmdi zmdi-home"></i> 演员管理</a>--%>
			<%--			</li>--%>


			<%--			<li>--%>
			<%--				<a class="waves-effect" href="/admin/user"><i class="zmdi zmdi-home"></i> 普通用户管理</a>--%>
			<%--			</li>--%>

		</ul>
		<!-- /菜单区 -->
	</aside>
	<!-- /左侧导航区 -->
	<section id="content">
		<div class="content_tab">
			<div class="tab_left">
				<a class="waves-effect waves-light" href="javascript:;"><i class="zmdi zmdi-chevron-left"></i></a>
			</div>
			<div class="tab_right">
				<a class="waves-effect waves-light" href="javascript:;"><i class="zmdi zmdi-chevron-right"></i></a>
			</div>
			<ul id="tabs" class="tabs">
				<li id="tab_home" data-index="home" data-closeable="false" class="cur">
					<!--                    <span class="waves-effect waves-light">首页</span>-->
				</li>
			</ul>
		</div>

		<%--		<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#createModal" style="position: relative;top: 10px; left:10px; width: 100px; height: 40px; font-size: 15px;">--%>
		<%--			新增管理员--%>
		<%--		</button>--%>
		<%--		<div id="toolbar" style="position: absolute ;top: 70px; left: 280px;">--%>
		<%--			<a class="waves-effect waves-button" onclick="createAction()" ><i class="zmdi zmdi-plus"></i> 新增管理员</a>--%>
		<%--			<!-- Button trigger modal -->--%>

		<%--		</div>--%>

		<!-- 管理员的主页面 -->
		<%--		<h1>${sessionScope.user.name },您好！</h1>--%>
		<%--		<div>--%>
		<%--			<%session.setAttribute("path", request.getRequestURI()); %>--%>
		<%--			<a href="<%=request.getContextPath()%>/modify/modifypassword.jsp">修改密码</a>--%>
		<%--			<a href="<%=request.getContextPath()%>/logoutServlet">注销</a>--%>
		<%--		</div>--%>
		<%--		<br><br>--%>
		<%--		<div>--%>
		<%--			<a href="<%=request.getContextPath()%>/query.do">用户管理</a>--%>
		<%--			<br><br>--%>
		<%--			<a href="<%=request.getContextPath()%>/administrator/systemmaintain/systemmaintain.jsp">系统维护</a>--%>
		<%--		</div>--%>

		<!-- 修改密码页面 -->
		<div class="modifyMM" style=" position: absolute;left: 300px;top: 100px;">
			<div>
				<% String tokenValue = new Date().getTime() +""; %>
				<c:set value="<%=tokenValue %>" var="token" scope="session"/>
			</div>
			<form action="<%=request.getContextPath()%>/modifyPasswordServlet" method="post" >
				<div class="input-group">
					${sessionScope.message }
					<%session.removeAttribute("message"); %>
				</div>
				<div class="input-group">
					<input type="hidden" name="token" value="<%=tokenValue %>"/>
				</div>
				<div class="form-group" >
					旧密码：<input type="password" name="oldpassword"/>
				</div>
				<br>
				<div class="form-group" >
					新密码：<input type="password" name="newpassword"/>
				</div>
				<br>
				<div class="form-group" >
					确认密码：<input type="password" name="confirmpassword"/>
				</div>
				<br>
				<div >
					<input type="submit" name="submit" value="确定" />
					<a href="${sessionScope.path }">返回</a>
				</div>
			</form>
		</div>


	</section>


</section>

	<script src="<%=request.getContextPath()%>/res/plugins/jquery.1.12.4.min.js"></script>
	<%--	{{--<script src="../../plugins/bootstrap-3.3.0/js/bootstrap.min.js"></script>--}}--%>
	<script src="<%=request.getContextPath()%>/res/plugins/waves-0.7.5/waves.min.js"></script>
	<script src="<%=request.getContextPath()%>/res/plugins/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="<%=request.getContextPath()%>/res/plugins/BootstrapMenu.min.js"></script>
	<script src="<%=request.getContextPath()%>/res/plugins/device.min.js"></script>
	<script src="<%=request.getContextPath()%>/res/plugins/fullPage/jquery.fullPage.min.js"></script>
	<script src="<%=request.getContextPath()%>/res/plugins/fullPage/jquery.jdirk.min.js"></script>
	<script src="<%=request.getContextPath()%>/res/plugins/jquery.cookie.js"></script>

	<script src="<%=request.getContextPath()%>/res/js/admin/admin.js"></script>


	<!--<script src="../plugins/jquery.1.12.4.min.js"></script>-->
	<script src="<%=request.getContextPath()%>/res/plugins/bootstrap-3.3.0/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/res/plugins/bootstrap-table-1.11.0/bootstrap-table.min.js"></script>
	<script src="<%=request.getContextPath()%>/res/plugins/bootstrap-table-1.11.0/locale/bootstrap-table-zh-CN.min.js"></script>
	<!--<script src="../plugins/waves-0.7.5/waves.min.js"></script>-->
	<script src="<%=request.getContextPath()%>/res/plugins/jquery-confirm/jquery-confirm.min.js"></script>
	<script src="<%=request.getContextPath()%>/res/plugins/select2/js/select2.min.js"></script>
	<script src="https://unpkg.com/axios@1.1.2/dist/axios.min.js"></script>
</body>
</html>