<%@page import="java.util.Map"%>
<%@page import="com.hua.entity.OptionalCourse"%>
<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教务管理系统</title>

	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/res/css/mv.css"/>
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/res/css/index.css">
</head>
<body>
<div style="width: 100%;height: 80px; background-color:#3A5357;position: relative;">
	<div style="position: absolute;bottom: -5px;height: 5px;width: 100%;background-color:#fff;z-index: -1;"></div>
	<div class="search1">
		<img src="<%=request.getContextPath()%>/res/images/logo.png" alt="" style="position: absolute;left: 100px;">
		<%--		       <div class="logo1" style="width: 153px; padding: 20.6px 0; display: inline-block;"><img src="../res/images/logo.png" alt=""><a href=""></a></div>--%>
		<nav class="navmargin navbar navbar-default" role="navigation" style="background-color: #3A5357">
			<div class="shurukuang" style="padding: 20.6px 30px;">
				<form class="bs-example" role="form" action="/search/movie" method="get">
					<div class="row">
						<div class="col-lg-6">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="python编程" name="keyword" >
								<span class="input-group-btn">
								<button class="btn btn-default" type="submit">
									Go!
								</button>
							</span>
							</div><!-- /input-group -->
						</div><!-- /.col-lg-6 -->
					</div><!-- /.row -->
				</form>
			</div>
			<!-- 图标加上搜索框结束 -->
			<div id="col10" class="dengluzhuce">
				<%--				{{--                <a class="mymusic" href="#">我的音乐</a>--}}--%>
				<%--				{{--                <a class="mymusic" href="#">会员中心</a>--}}--%>
				<span class="mymusic">|</span>
				<img id="touxiang" src="<%=request.getContextPath()%>/res/images/touxiang.png" width="40px" height="40px" style="display: inline-block; width: 40px;height: 40px;border:0;border-radius: 40px;margin-bottom: 5px;">
				<a id="userName" style="cursor: pointer;" class="mymusic" href="#">
					${sessionScope.user.name },您好！</a>
					<a href="<%=request.getContextPath()%>/logoutServlet">注销</a>
				<a id="zhuXiao" onclick="zhuXiao();location.reload();" href="#">
				</a>
				<%--				<button id="display1" class="btn denglu" data-toggle="modal" data-target="#myModal">登 &nbsp&nbsp录</button> <!--触发模态框按钮-->--%>

				<%--				<button id="display1" class="btn denglu" data-toggle="modal" data-target="#adminModal">管理员登录--%>
				</button> <!--触发模态框按钮-->
			</div>
		</nav>
	</div>
</div>





<nav class="daohanglan">
	<div class="big3">
		<ul>
			<li><a class="erjicaidan2" href="<%=request.getContextPath()%>/student/student.jsp">首页</a></li>
			<li><a class=" erjicaidan2" href="<%=request.getContextPath()%>/student/courseselect/courseselect.jsp">选课课报名</a></li>
			<li><a class="erjicaidan2" href="<%=request.getContextPath()%>/studentInformationServlet">学籍信息</a></li>
			<%--			<li><a class="erjicaidan2" href="{{url('/menu')}}">菜单</a></li>--%>
			<%--			<li><a class="erjicaidan2" href="{{url('/station')}}">猜你喜欢</a></li>--%>

			<%--			{{--            <li class="dropdown">--}}--%>
			<%--			{{--                <a class="erjicaidan2" href="#" class="dropdown-toggle" data-toggle="dropdown">--}}--%>
			<%--				{{--                    更多 <b class="caret"></b>--}}--%>
			<%--				{{--                </a>--}}--%>
			<%--			{{--                <ul class="dropdown-menu">--}}--%>
			<%--				{{--                    <li><a class="erjicaidan" href="/musicRadio.html  ">电台</a></li>--}}--%>
			<%--				{{--                    <li><a class="erjicaidan" href="/songlist.html  ">歌单</a></li>--}}--%>
			<%--				{{--                    <li><a class="erjicaidan" href="/singer.html  ">歌手</a></li>--}}--%>
			<%--				{{--                </ul>--}}--%>
			</li>
		</ul>
		<%--		{{--        <ul>--}}--%>
		<%--		{{--            <li class="youfudong"><a style="padding: 20px 0px" href="playmusic.html"><span class="glyphicon glyphicon-shopping-cart" style="font-size: 14px"> 商城</span></a> </li>--}}--%>
		<%--		{{--            <li class="youfudong"><a style="padding: 20px 0px" href="/musician.html"><span class="glyphicon glyphicon-headphones" style="font-size: 14px"> 音乐人</span></a> </li>--}}--%>
		<%--		{{--            <li class="youfudong"><a style="padding: 20px 0px" href="playmusic.html"><span class="glyphicon glyphicon-music" style="font-size: 14px"> 轻语LIVE</span></a> </li>--}}--%>
		<%--		{{--            <li class="youfudong"><a style="padding: 20px 0px" href="/QQmusic.html"><span class="glyphicon glyphicon-star-empty" style="font-size: 14px"> 在线播放</span></a></li>--}}--%>
		<%--		{{--        </ul>--}}--%>
	</div>
	</div>
</nav>


<div class="big clearfix" style="float: left;position: absolute;left: 200px;width: 200px;">
	<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
				<span class="nonostyle" data-toggle="collapse" data-parent="#accordion"
					  href="#collapseOne">
					热门课程
				</span>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body">
					<a href="">Java开发</a>
					<a href="">雅思托福</a>
					<a href="">市场营销</a>
					<a href="">影视编导</a>
					<a href="">文学创作</a>
					<a href="">自动化技术</a>
					<a href="">茶道</a>
					<a href="">法律</a>
					<a href="">美术</a>
					<a href="">C++</a>
				</div>
			</div>
		</div>
		<div class="panel panel-success">
			<div class="panel-heading">
				<h4 class="panel-title">
				<span class="nonostyle" data-toggle="collapse" data-parent="#accordion"
					  href="#collapseTwo">
					收藏最多
                    </span>
				</h4>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse">
				<div class="panel-body">
					<a href="">Java开发</a>
					<a href="">雅思托福</a>
					<a href="">市场营销</a>
					<a href="">影视编导</a>
					<a href="">文学创作</a>
					<a href="">自动化技术</a>
					<a href="">茶道</a>
					<a href="">法律</a>
					<a href="">美术</a>
					<a href="">C++</a>
				</div>
			</div>
		</div>
		<div class="panel panel-info">
			<div class="panel-heading">
				<h4 class="panel-title">
                    <span style="cursor: pointer" class="nonostyle" data-toggle="collapse" data-parent="#accordion"
						  href="#collapseThree">
                        人气课程
                        </span>
				</h4>
			</div>
			<div id="collapseThree" class="panel-collapse collapse">
				<div class="panel-body">
					<a href="">Java开发</a>
					<a href="">雅思托福</a>
					<a href="">市场营销</a>
					<a href="">影视编导</a>
					<a href="">文学创作</a>
					<a href="">自动化技术</a>
					<a href="">茶道</a>
					<a href="">法律</a>
					<a href="">美术</a>
					<a href="">C++</a>
				</div>
			</div>
		</div>
		<div class="panel panel-warning">
			<div class="panel-heading">
				<h4 class="panel-title">
				<span class="nonostyle" data-toggle="collapse" data-parent="#accordion"
					  href="#collapseFour">
					热门课程
				</span>
				</h4>
			</div>
			<div id="collapseFour" class="panel-collapse collapse">
				<div class="panel-body">
					<a href="">Java开发</a>
					<a href="">雅思托福</a>
					<a href="">市场营销</a>
					<a href="">影视编导</a>
					<a href="">文学创作</a>
					<a href="">自动化技术</a>
					<a href="">茶道</a>
					<a href="">法律</a>
					<a href="">美术</a>
					<a href="">C++</a>
				</div>
			</div>
		</div>
	</div>





</div>




	<div>
<%--		<h3>选课报名</h3>--%>
			<form action="<%=request.getContextPath()%>/queryOptionalCourse.optional"  method="post">
				<div>
					<font color="RED">${sessionScope.message }	</font>
					<%session.removeAttribute("message"); %>
				</div>
				<table style="left: 500px; float: left;overflow:auto;position: absolute;">
					<tr>
						<td>学年学期:</td>
						<td>
							<select name="yearTerm" >
								<option value=""></option>
								<option value="2024春季">2024春季</option>
								<option value="2024秋季">2024秋季</option>
								<option value="2025春季">2025春季</option>
								<option value="2025秋季">2025秋季</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							<input type="submit" value="查询"/>
						</td>
					</tr>
				</table>
			</form>
	</div>
	<br><br>
	${sessionScope.message }
	<%session.removeAttribute("message"); %>
	<c:if test="${sessionScope.map != null }">
		<div>
			<table border="1" cellpadding="0" cellspacing="0"  style="position: absolute;left: 500px; width: 1400px;top: 250px;" class="table table-striped">
				<tr>
					<th>学年学期</th>
					<th>课程编号</th>
					<th>课程名称</th>
<%--					<th>学分</th>--%>
					<th>课程类型</th>
					<th>任课老师</th>
					<th>上课方式</th>
					<th>上课时间</th>
					<th>是否已报名</th>
					<th></th>
				</tr>
				<%
					Map<OptionalCourse, String> map = (Map<OptionalCourse, String>)session.getAttribute("map");
					for(Map.Entry<OptionalCourse, String> entry : map.entrySet()){
				%>

					<tr>
						<td><%= entry.getKey().getYearTerm() %></td>
						<td><%= entry.getKey().getCourseId() %></td>
						<td><%= entry.getKey().getCourseName() %></td>
<%--						<td><%= entry.getKey().getCredit() %></td>--%>
						<td><%= entry.getKey().getCourseType() %></td>
						<td><%= entry.getKey().getTeacher() %></td>
						<td><%= entry.getKey().getClassWay() %></td>
						<td><%= entry.getKey().getClassTime() %></td>
						<td><%= entry.getValue() %></td>
						<td>
							<a href="<%=request.getContextPath()%>/studentApply.optional?courseId=<%= entry.getKey().getCourseId()%>">报名</a>

						</td>
					</tr>

				<%
					}
				%>
			</table>
		</div>
	</c:if>

<script src="<%=request.getContextPath()%>/res/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=request.getContextPath()%>/res/js/bootstrap-paginator.min.js"></script>
<script src="<%=request.getContextPath()%>/res/js/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/res/js/tools.js"></script>
<script src="<%=request.getContextPath()%>/res/js/jquery.cookie.js"></script>

</body>
</html>