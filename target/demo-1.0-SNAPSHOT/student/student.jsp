<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教务管理系统</title>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../res/css/mv.css"/>
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../res/css/index.css">


	<link href="<%=request.getContextPath()%>/res/css/style.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/res/css/main.css"  rel="stylesheet" type="text/css" >
	<link href="<%=request.getContextPath()%>/res/css/lanrenzhijia.css" type="text/css" rel="stylesheet" />
	<%--    <link href="res/css/initializtion.css" rel="stylesheet" type="text/css"/>--%>
	<script type="text/javascript" src="<%=request.getContextPath()%>/res/js/indexjs.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/res/js/jquery-1.4.4.js"></script>
	<script src="<%=request.getContextPath()%>/res/js/jquery-1.5.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/res/js/lanrenzhijia.js"></script>
</head>
<body>
<div style="width: 100%;height: 80px; background-color:#3A5357;position: relative;">
	<div style="position: absolute;bottom: -5px;height: 5px;width: 100%;background-color:#fff;z-index: -1;"></div>
	<div class="search1">
		<img src="../res/images/logo.png" alt="" style="position: absolute;left: 100px;">
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
				<img id="touxiang" src="../res/images/touxiang.png" width="40px" height="40px" style="display: inline-block; width: 40px;height: 40px;border:0;border-radius: 40px;margin-bottom: 5px;">
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
<!--green-->
<%--<div class="header_bom">--%>

<%--	<div id="js_banner" class="banner">--%>
<%--		<ul id="js_banner_img" class="banner_img clear">--%>
<%--			<li class="bgli01">--%>
<%--				<div class="banner_inner">--%>
<%--					<div class="child child1" ><img  style=" width:1920px;" src="<%=request.getContextPath()%>/res/images/new_banner1.jpg" /></div><!-- data-z="2"与data-z="3"表示两个图层进退场的顺序有区别 -->--%>
<%--				</div>--%>
<%--			</li>--%>
<%--			<li class="bgli02">--%>
<%--				<div class="banner_inner">--%>
<%--					<div class="child child1"><img src="<%=request.getContextPath()%>/res/images/new_banner1.jpg" /></div>--%>
<%--				</div>--%>
<%--			</li>--%>
<%--			<li class="bgli03">--%>
<%--				<div class="banner_inner">--%>
<%--					<div class="child child1"><img src="<%=request.getContextPath()%>/res/images/new_banner1.jpg" /></div>--%>
<%--				</div>--%>
<%--			</li>--%>
<%--		</ul>--%>
<%--	</div>--%>

<%--</div>--%>
<!---->
<div class="center">
	<div class="center_all">
		<div class="center_video">
			<%--            <embed src="http://player.youku.com/player.php/sid/14567794/v.swf" width="650" height="430" autostart="true">--%>

			<%--            </embed>--%>
			<img width="650" height="430" src="<%=request.getContextPath()%>/res/images/banner_29.jpg"/>
		</div>
		<div class="center_right">
			<div class="center_right_dh" id="rightdh" onmouseover="centerdhdiv()" onmouseout="centerdhdivout()">
				<div id="righttit">
					<h1 style="font-family:'微软雅黑'; font-weight:500;">雅思阅读</h1>
					<h2>高分攻略</h2>
					<div class="center_right_dh_but"><a href="#">立即查看</a></div>
				</div>

				<div id="dhrighttit" class="center_right_dh_two" style="display:none">
					<h2 style="font-family:'微软雅黑'; font-weight:100; margin-left:-160px;" >雅思阅读</h2>
					<h3>高分攻略</h3>
					<p>大学讲师,十年英语教学经验,毕业于中国地地质大学英语专业,武汉大学法学双学位,英美文学硕士,英国阿伯丁大学访问学者,英语专业八级,英语...大学讲师,十年英语教学经验,毕业于中国地地质大学英语专业,武汉大学法学访问学</p>
					<div class="center_right_dh_two_but"><a href="#">立即查看</a></div>
				</div>
			</div>
		</div><br />
		<div class="center_left_bom">
			<div class="center_left_bom_div" id="bomdiv"  onmouseover="bomdivOver()" >
				<h2 style="font-weight:500;
		color:#444;">课程介绍</h2>
				<h3 style="font-size:27px;font-weight:500;">精确细节</h3>
				<div class="center_left_bom_div_but"><a href="#center_title">立即查看</a></div>
			</div>
			<div class="center_left_bom_show" id="bomshowimg">

			</div>
		</div>
		<a href="production.jsp">
			<div class="center_cen_bom">
				<div class="cen_bom_div">
					<h1 style="font-weight:100;
		margin-left:24px;margin-top:20px; font-family:'微软雅黑';
	letter-spacing:4px; font-size:31px;" >学院特色</h1>
					<p class="pone">唯尔的特色和优势：<br />真正注重学术和学生的最优秀的老师</p>
					<p class="ptwo">新疆雅思,托福培训史上首个满分组合,留美,访英学者鼎力分享</p>
				</div>
			</div></a>
		<a href="#read"><div class="center_cen_right_one" id="ccro" >
			<div class="center_cen_right_one_div" id="ccros" >
				<h1 style="font-weight:100;
				margin-left:20px;margin-top:0px; font-family:'微软雅黑';
			letter-spacing:4px; font-size:31px;"  >推荐阅读</h1>
			</div>
		</div></a>
		<div class="center_cen_right_two">
			<div class="crt">
				<h1 style="font-size:40px; margin-top:5px; font-weight:100;">加入我们</h1>
				<p style="margin-top:20px;">职场：市场  教室 出纳前台</p>
				<p style="margin-top:20px;">联系电话：15000000000 张欢老师</p>
				<div class="crt_div"><a href="add.html">立即查看</a></div>
			</div>
		</div>
	</div>
</div>
<div class="center_tc">
	<div class="tc_all">
		<a href="teachers.jsp"><div class="tc_one" id="tcone"  ></div></a>
		<a href="teachers.jsp#tctwo"><div class="tc_two" id="tctwo" ></div></a>
		<a href="teachers.jsp#tcthree"><div class="tc_three" id="tcthree"  ></div></a>
		<a href="teachers.jsp#tcfour"><div class="tc_four" id="tcfour"  ></div></a>

		<!--文字栏-->
		<div class="tc_wzOne">
			<h1 style="font-weight:100">曾帅</h1>
			<p>大学讲师,十年英语教学经验,毕业于中国地地质大学英语专业,武汉大学法学双学位,英美文学硕士,英国阿伯丁大学访问学者,英语专业八级,英语...</p>
		</div>
		<div class="tc_wzTwo">
			<h1 style="font-weight:100">Giselle</h1>
			<p>大学讲师,十年英语教学经验,毕业于中国地地质大学英语专业,武汉大学法学双学位,英美文学硕士,英国阿伯丁大学访问学者,英语专业八级,英语...</p>
		</div>
		<div class="tc_wzThree">
			<h1  style="font-weight:100">Anne</h1>
			<p>大学讲师,十年英语教学经验,毕业于中国地地质大学英语专业,武汉大学法学双学位,英美文学硕士,英国阿伯丁大学访问学者,英语专业八级,英语...</p>
		</div>
		<div class="tc_wzFour">
			<h1  style="font-weight:100">蒋夏清</h1>
			<p>大学讲师,十年英语教学经验,毕业于中国地地质大学英语专业,武汉大学法学双学位,英美文学硕士,英国阿伯丁大学访问学者,英语专业八级,英语...</p>
		</div>
		<div class="tc_Look">
			<a href="teachers.jsp">查看更多</a>
		</div>
	</div>
</div>
<a name="center_title"></a>
<div class="center_cour">
	<div class="titles">
		<div class="left_img"></div>
		<div class="center_title" >课程介绍</div>
		<div class="right_img"></div>
	</div>
	<div class="cour_all">
		<a href="coursesOne.html">
			<div class="cour_left" >
				<div class="cour_left_div">
					<p style="margin-left:20px; margin-top:20px;">5月-7月常规班设置：</p>
					<p style="margin-left:20px; margin-top:10px;">雅思基础班/雅思强化班/雅思冲刺班</p>
				</div>
			</div>
		</a>
		<a href="coursesTwo.html">
			<div class="cour_cen">

				<div class="cour_cen_div">
					<p style="margin-left:20px; margin-top:20px;">5月-7月周末班设置：</p>
					<p style="margin-left:20px; margin-top:10px;">托福基础班/托福强化班/托福冲刺班</p>
				</div>
			</div>
		</a>
		<a href="coursesThree.html">
			<div class="cour_right">

				<div class="cour_right_div">
					<p style="margin-left:20px; margin-top:20px;">暑假班级设置：</p>
					<p  style="margin-left:20px; margin-top:10px;">java课程/python课程</p>
				</div>
			</div>
		</a>
	</div>
</div>
<div class="center_zb">
	<div class="zb_all">
		<div class="zb_img"></div>
		<div class="zb_button_all">
			<div class="zb_title_text">
				<h1>准备好了吗？</h1>
				<p class="text_po" style="font-size:13px;">《你准备好了吗》的每一个字母，都是为职场上的每一步行船和每一种环境所设置的。诚然，为环境所囿，为条件所囿，为能力所囿，有些事情你是无法改变的。当我们不能改变全部时，却有可能改变局部。一个人的失败，往往是把无法做好的事没有做好，把本该可以做好的事也给忽略了。做好可以做好的事情，未知的生活，可能会未卜地呈现你未曾领略的惬意和美感。</p>
			</div>
			<div>
				<p class="text_pt" style="font-size:13px;">面对职场上一扇扇或许对你暂时还是紧闭的门，不必沮丧，把可以做好的事做好，无形中就拥有了一种功夫，这一种功夫就是一把打开你胜出之门的钥匙，书中的每一个字母，就是这样一把钥匙。有了钥匙，就有了转机，用它去开启，意想不到的另一扇门也会因此洞开，随之得到的，是职场的认同和世界的接纳。</p></div>
			<div class="zb_button_left"><a class="lefta" href="#foot">联系方式</a></div>
			<div class="zb_button_right"><a class="leftb" href="production.jsp">学院介绍</a></div>
		</div>
	</div>
</div>
<a name="read"></a>
<div class="center_read">
	<div class="titles">
		<div class="left_img"></div>
		<div class="center_title" >推荐阅读</div>
		<div class="right_img"></div>
	</div>
	<div class="read_all">
		<div class="read_one" >
			<div class="readone-image-container"><img src="<%=request.getContextPath()%>/res/images/banner_21.png" class="news-image"></div>
			<div class="read_div" >
				<p class="read-summary" style="" >Pharmacy partnership with local high school wins city award The Nashville chamber awarded  Lipscomb ...</p>
			</div>
		</div>
		<div class="read_two" >
			<div class="readone-image-container"><img src="<%=request.getContextPath()%>/res/images/banner_22.png" class="news-image"></div>
			<div class="read_div" >
				<p class="read-summary"> Pharmacy partnership with local high school wins city award The Nashville chamber awarded  Lipscomb ...</p>
			</div>
		</div>
		<div class="read_three" >
			<div class="readone-image-container"><img src="<%=request.getContextPath()%>/res/images/banner_39.png" class="news-image"></div>
			<div class="read_div">
				<p class="read-summary"> Pharmacy partnership with local high school wins city award The Nashville chamber awarded  Lipscomb ...</p>
			</div>
		</div>
		<div class="read_four" >
			<div class="readone-image-container"><img src="<%=request.getContextPath()%>/res/images/banner_24.png" class="news-image"></div>
			<div class="read_div">
				<p class="read-summary"> Pharmacy partnership with local high school wins city award The Nashville chamber awarded  Lipscomb ...</p>
			</div>
		</div>
		<div class="read_five" >
			<div class="readone-image-container"><img src="<%=request.getContextPath()%>/res/images/banner_25.png" class="news-image"></div>
			<div class="read_div">
				<p class="read-summary"> Pharmacy partnership with local high school wins city award The Nashville chamber awarded  Lipscomb ...</p>
			</div>
		</div>
		<div class="read_six" >
			<div class="readone-image-container"><img src="<%=request.getContextPath()%>/res/images/banner_26.png" class="news-image"></div>
			<div class="read_div">
				<p class="read-summary"> Pharmacy partnership with local high school wins city award The Nashville chamber awarded  Lipscomb ...</p>
			</div>
		</div>
	</div>
</div>





<%--	<!-- 学生的主页面 -->--%>
<%--	<h1>${sessionScope.user.name },您好！</h1>--%>
<%--	<div>--%>
<%--		<%session.setAttribute("path", request.getRequestURI()); %>--%>
<%--		<a href="<%=request.getContextPath()%>/modify/modifypassword.jsp">修改密码</a>--%>
<%--		<a href="<%=request.getContextPath()%>/logoutServlet">注销</a>--%>
<%--	</div>--%>
<%--	<div>--%>
<%--		<h3>选课报名</h3>--%>
<%--		<a href="<%=request.getContextPath()%>/student/courseselect/courseselect.jsp">选修课报名</a>--%>
<%--		<br><br>--%>
<%--		<a href="<%=request.getContextPath()%>/student/courseselect/levelexamapply.jsp">考级报名</a>--%>
<%--	</div>--%>
<%--	<div>--%>
<%--		<h3>业务办理</h3>--%>
<%--		<a href="<%=request.getContextPath()%>/student/businessmanagement/postponeExamapply.jsp">缓考申请</a>--%>
<%--		<br><br>--%>
<%--		<a href="<%=request.getContextPath()%>/student/businessmanagement/exemptionapply.jsp">免修申请</a>--%>
<%--	</div>--%>
<%--	<div>--%>
<%--		<h3>信息查询</h3>--%>
<%--		<a href="<%=request.getContextPath()%>/student/informationinquiry/informationinquiry.jsp">信息查询</a>--%>
<%--	</div>--%>

<script src="../red/js/jquery.min.js?v=2.1.4"></script>
<script src="../res/js/bootstrap-paginator.min.js"></script>
<script src="../res/js/jquery.validate.min.js"></script>
<script src="../res/js/tools.js"></script>
<script src="../res/js/jquery.cookie.js"></script>
<script type="text/javascript">


	if ($.cookie("user_name")!=undefined  && $.cookie("user_name")!="1"){
		$("#userName").text("账号："+$.cookie("user_name"));
		$("#zhuXiao").text("注销");
		document.getElementById("touxiang").src="images/touxiang2.jpg";
		$("#display1").attr("style","display:none;");
	}

	// $('#test').validate({
	//     errorPlacement: function(error, element) {
	//         error.appendTo(element.parent());
	//     },
	//     onfocusout:function(element){
	//         $(element).valid();
	//     },
	//     submitHandler: function (form) {
	//         denglu($('#test').attr("action"), $('#test').serialize());
	//
	//
	//     }
	// });

</script>
</body>
</html>