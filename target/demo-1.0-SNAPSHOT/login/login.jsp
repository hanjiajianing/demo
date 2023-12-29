<%@page import="java.util.Date"%>
<%@ page language="java"
		 contentType="text/html;
		  charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%--<%@page isELIgnored="false" %>--%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教务管理系统</title>
<%--<link href="../res/css/main.css" type="text/css" rel="stylesheet"/>--%>
	<link href="../res/css/bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<%--	<link href="../res/bootstrap.min.css" rel="stylesheet" type="text/css"/>--%>
	<script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
	<!-- 引入样式 -->
	<link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css"  type="text/css">
	<!-- 引入组件库 -->
	<script src="https://unpkg.com/element-ui/lib/index.js"  type="text/css"></script>
</head>
<body>
<div class="header">
	<div class="inner-header flex">
		<h1>登陆管理</h1>
	</div>

	<div>
		<svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
			 viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
			<defs>
				<path id="gentle-wave"
					  d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
			</defs>
			<g class="parallax">
				<use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
				<use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
				<use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
				<use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
			</g>
		</svg>
	</div>
</div>


<div id="student-login" >
	<% String tokenValue = new Date().getTime() +""; %>
	<c:set value="<%=tokenValue %>" var="token" scope="session"/>
	<form id="studentForm" action="<%=request.getContextPath()%>/loginChangeServlet" method="post">
		<div>
			<font color="RED">${sessionScope.message }	</font>
			<%session.removeAttribute("message"); %>
		</div>
		<input type="hidden" name="token" value="<%=tokenValue %>"/>
<%--		<i class="zmdi zmdi-account" >登录</i>--%>
		<input  style="width: 392px;" id="username" type="text"   value="${sessionScope.username }" class="form-control" name="username" placeholder="帐号" >
		<div class="input-group">
			<input id="password" type="password" class="form-control" name="password" placeholder="密码" >
<%--			<span class="input-group-btn">--%>
<%--&lt;%&ndash;        <button class="btn btn-default" type="button"  onclick="document.getElementById('studentForm').submit();return false;">Go!</button>&ndash;%&gt;--%>
<%--      </span>--%>

<%--				<i class="zmdi zmdi-account" >验证码</i>--%>
				<input type="text" name="CHECK_CODE_PARAM_NAME" class="form-control" placeholder="验证码"/>
					   <br/>
				<img alt="" src="<%= request.getContextPath() %>/validateColorServlet">
				<input type="submit" name="submit" value="登录" class="btn btn-default"/>
			<!--		<input type="submit" value="登录">-->
		</div>
	</form>

</div>
	<!-- 登录页面 -->
<%--	<div class="page-container  ms-controller">--%>
<%--		<img src="<%=request.getContextPath() %>/img/1234.png" height="150px" width="400px">--%>
<%--		<div class="main_box">--%>
<%--			<div class="login_form">--%>
<%--				<div>--%>
<%--					<% String tokenValue = new Date().getTime() +""; %>--%>
<%--					<c:set value="<%=tokenValue %>" var="token" scope="session"/>--%>
<%--				</div>--%>
<%--				<form action="<%=request.getContextPath()%>/loginChangeServlet" method="post">--%>
<%--					<div>--%>
<%--						<font color="RED">${sessionScope.message }	</font>--%>
<%--						<%session.removeAttribute("message"); %>--%>
<%--					</div>--%>
<%--					<table>--%>
<%--						<tr>--%>
<%--							<td>--%>
<%--								<input type="hidden" name="token" value="<%=tokenValue %>"/>--%>
<%--							</td>--%>
<%--						</tr>--%>
<%--						<tr>--%>
<%--							<td>账号：</td>--%>
<%--							<td>--%>
<%--								<input type="text" name="username" value="${sessionScope.username }"/>--%>
<%--							</td>--%>
<%--						</tr>--%>
<%--						<tr>--%>
<%--							<td>密码：</td>--%>
<%--							<td>--%>
<%--								<input type="password" name="password" size="21"/>--%>
<%--							</td>--%>
<%--						</tr>--%>
<%--						<tr>--%>
<%--							<td>验证码：</td>--%>
<%--							<td>--%>
<%--								<input type="text" name="CHECK_CODE_PARAM_NAME"/>--%>
<%--							</td>--%>
<%--							<td>--%>
<%--								<img alt="" src="<%= request.getContextPath() %>/validateColorServlet">--%>
<%--							</td>--%>
<%--						</tr>--%>
<%--						<tr>--%>
<%--							<td>--%>
<%--								<input type="submit" name="submit" value="登录" />--%>
<%--							</td>--%>
<%--							<td>--%>
<%--								<a href="findpassword.jsp">找回密码</a>--%>
<%--							</td>--%>
<%--						</tr>--%>
<%--					</table>--%>
<%--				</form>--%>
<%--			</div>--%>
<%--		</div>--%>

<%--	</div>--%>

<script src="../res/js/jquery.1.12.4.min.js"></script>
<script src="../res/css/bootstrap-3.3.0/js/bootstrap.min.js"></script>
</body>
<style>
	#teacher-login{
		position: absolute;
		width: 500px;
		height: 500px;
		left: 200px;
		top: 300px;
		float: left;
	}
	#student-login{
		position: absolute;
		width: 500px;
		height: 500px;
		left: 800px;
		top: 400px;
		float: left;
	}



	body {
		margin: 0;
	}

	h1 {
		font-family: 'Lato', sans-serif;
		font-weight: 300;
		letter-spacing: 2px;
		font-size: 48px;
	}
	p {
		font-family: 'Lato', sans-serif;
		letter-spacing: 1px;
		font-size: 14px;
		color: #333333;
	}

	.header {
		position: relative;
		text-align: center;
		background: linear-gradient(60deg, rgba(84, 58, 183, 1) 0%, rgba(0, 172, 193, 1) 100%);
		/* 	background: #FFAFBD;
            background: -webkit-linear-gradient(to right, #ffc3a0, #FFAFBD);
            background: linear-gradient(to right, #ffc3a0, #FFAFBD);
         */
		color: white;
	}
	.logo {
		width: 50px;
		fill: white;
		padding-right: 15px;
		display: inline-block;
		vertical-align: middle;
	}

	.inner-header {
		height: 65vh;
		width: 100%;
		margin: 0;
		padding: 0;
	}

	.flex {
		/*Flexbox for containers*/
		display: flex;
		justify-content: center;
		align-items: center;
		text-align: center;
	}

	.waves {
		position: relative;
		width: 100%;
		height: 15vh;
		margin-bottom: -7px; /*Fix for safari gap*/
		min-height: 100px;
		max-height: 150px;
	}

	.content {
		position: relative;
		height: 20vh;
		text-align: center;
		background-color: white;
	}

	.content a {
		margin: 0 5px;
		font-size: 12px;
		color: #333;
	}

	.content a:hover {
		color: #000;
	}

	/* Animation */

	.parallax > use {
		animation: move-forever 25s cubic-bezier(0.55, 0.5, 0.45, 0.5) infinite;
	}
	.parallax > use:nth-child(1) {
		animation-delay: -2s;
		animation-duration: 7s;
	}
	.parallax > use:nth-child(2) {
		animation-delay: -3s;
		animation-duration: 10s;
	}
	.parallax > use:nth-child(3) {
		animation-delay: -4s;
		animation-duration: 13s;
	}
	.parallax > use:nth-child(4) {
		animation-delay: -5s;
		animation-duration: 20s;
	}
	@keyframes move-forever {
		0% {
			transform: translate3d(-90px, 0, 0);
		}
		100% {
			transform: translate3d(85px, 0, 0);
		}
	}
	/*Shrinking for mobile*/
	@media (max-width: 768px) {
		.waves {
			height: 40px;
			min-height: 40px;
		}
		.content {
			height: 30vh;
		}
		h1 {
			font-size: 24px;
		}
	}
</style>
</html>