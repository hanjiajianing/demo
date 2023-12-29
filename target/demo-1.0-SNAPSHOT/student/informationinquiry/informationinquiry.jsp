<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息查询</title>
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

			</li>
		</ul>

	</div>
	</div>
</nav>
	<div>
		<h3>信息查询</h3>
		<a href="<%=request.getContextPath()%>/studentInformationServlet">学籍信息</a>
		<br><br>
		<a href="<%=request.getContextPath()%>/student/informationinquiry/courseschedule.jsp">课表查询</a>
		<br><br>
		<a href="<%=request.getContextPath()%>/studentquery.query">考级成绩</a>
		<br><br>
		<a href="<%=request.getContextPath()%>/studentQuery.grade">课程成绩</a>
		<br><br>
		<a href="<%=request.getContextPath()%>/student/informationinquiry/examarrange.jsp">考试安排</a>
	</div>


<script src="<%=request.getContextPath()%>/res/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=request.getContextPath()%>/res/js/bootstrap-paginator.min.js"></script>
<script src="<%=request.getContextPath()%>/res/js/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/res/js/tools.js"></script>
<script src="<%=request.getContextPath()%>/res/js/jquery.cookie.js"></script>
</body>
</html>