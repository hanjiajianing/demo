<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学籍信息</title>
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


<%--	<h1>${sessionScope.user.name },您好！</h1>--%>
<%--	<div>--%>
<%--		<a href="<%=request.getContextPath()%>/modify/modifypassword.jsp">修改密码</a>--%>
<%--		<a href="<%=request.getContextPath()%>/login/login.jsp">注销</a>--%>
<%--	</div>--%>
<div style="position: relative;left: 200px;">
	<div>
		<h3>学籍信息</h3>
	</div>
	<div>
		<font color="RED">${requestScope.message }</font>	
	</div>
	<br>
	<form action="<%=request.getContextPath()%>/studentInformationServlet" method="post">
		<div class="input-group">
			<span class="input-group-addon" id="sizing-addon2">学号:</span>
			<input style="width: 400px;" class="form-control" type="text" readonly="readonly"  name="studentId" value="${requestScope.studentBasicInformation.studentId }"/>
		</div>
<br/>
		<br/>
		<div class="input-group">
			<span class="input-group-addon" >姓名:</span>
			<input style="width: 400px;" class="form-control" type="text" readonly="readonly"  name="studentName" value="${requestScope.studentBasicInformation.studentName }"/>
		</div>
		<br/>
		<br/>
		<div class="input-group">
			<span class="input-group-addon" >性别：</span>
			<input style="width: 400px;" class="form-control" type="text"   name="gender" value="${requestScope.studentBasicInformation.gender }"/>
		</div>
		<br/>
		<br/>
		<div class="input-group">
			<span class="input-group-addon" >年级:</span>
			<input style="width: 400px;" type="text" class="form-control"  name="grade" value="${requestScope.studentBasicInformation.grade }"/>
		</div>
		<br><br>


		<div class="input-group">
			<span class="input-group-addon" >班级:</span>
			<input style="width: 400px;" type="text" class="form-control"  name="className" value="${requestScope.studentBasicInformation.className }"/>
		</div>
		<br><br>

		<div class="input-group">
			<span class="input-group-addon" >学院:</span>
			<input style="width: 400px;" type="text" class="form-control"  name="academy" value="${requestScope.studentBasicInformation.academy }"/>
		</div>
		<br><br>

		<div class="input-group">
			<span class="input-group-addon" >专业:</span>
			<input style="width: 400px;" type="text"  class="form-control"  name="profession" value="${requestScope.studentBasicInformation.profession }"/>
		</div>
		<br><br>

		<div class="input-group">
			<span class="input-group-addon" >所在校区:</span>
			<input style="width: 400px;" type="text" class="form-control"  name="campus" value="${requestScope.studentBasicInformation.campus }"/>
		</div>
		<br><br>

		<div class="input-group">
			<span class="input-group-addon" >联系电话:</span>
			<input style="width: 400px;" type="text" class="form-control" name="phone" value="${requestScope.studentBasicInformation.phone }"/>
		</div>
		<br><br>

		<div class="input-group">
			<span class="input-group-addon" >家庭地址:</span>
			<input style="width: 400px;" class="form-control" type="text" size="40" name="homeAddress" value="${requestScope.studentBasicInformation.homeAddress }"/>
		</div>
		<br><br>

		<div>
			<input type="submit" name="submit" value="修改" class="btn btn-default"/>
<%--			<a href="<%=request.getContextPath() %>/student/informationinquiry/informationinquiry.jsp">返回上一步</a>--%>
		</div>		
	</form>

</div>

<script src="<%=request.getContextPath()%>/res/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=request.getContextPath()%>/res/js/bootstrap-paginator.min.js"></script>
<script src="<%=request.getContextPath()%>/res/js/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/res/js/tools.js"></script>
<script src="<%=request.getContextPath()%>/res/js/jquery.cookie.js"></script>
</body>
</html>