<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<!DOCTYPE html>--%>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="res/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="res/css/main.css"  rel="stylesheet" type="text/css" >
    <link href="res/css/lanrenzhijia.css" type="text/css" rel="stylesheet" />
    <%--    <link href="res/css/initializtion.css" rel="stylesheet" type="text/css"/>--%>
    <script type="text/javascript" src="res/js/indexjs.js"></script>
    <script type="text/javascript" src="res/js/jquery-1.4.4.js"></script>
    <script src="res/js/jquery-1.5.1.min.js"></script>
    <script src="res/js/lanrenzhijia.js"></script>
    <script>
        $(function(){
            var $window = $(window),
                window_width = $window.width();
            $('#js_banner, #js_banner_img li').width(window_width);

            var urlParam = G.util.parse.url(),
                startFrame = 0;
            if (urlParam.search && ('banner' in urlParam.search)) {
                startFrame = (parseInt(urlParam.search['banner'])-1) || 0;
            }

            new $.Tab({/*添加圆点按钮*/
                target: $('#js_banner_img li'),
                effect: 'slide3d',
                animateTime: 1000,
                stay: 5000,
                playTo: startFrame,
                autoPlay: true,
                merge: true
            });
            $('#js_banner_img').css('left','-' + (window_width * startFrame) + 'px');
        })
    </script>
</head>

<body  onLoad="setupZoom();">
<!--顶部-->
<div class="header" >
    <div class="header_all">
        <div class="header_logo" ><a href="index.html"><img src="res/images/logo.png"/></a></div>
        <div class="header_div">
            <ul class="header_ul">
                <li class="header_li"><a class="logoa"  href="index.jsp">首页</a></li>
                <li class="header_li"><a class="logoa"   href="production.jsp">学院介绍</a></li>
                <li class="header_li"><a class="logoa"   href="teachers.jsp">教师风采</a></li>
<%--                <li class="header_li"><a class="logoa"  href="coursesOne.html">课程介绍</li>--%>
<%--                <li class="header_li"><a class="logoa"  href="index.html#read">推荐阅读</a></li>--%>
<%--                <li class="header_li"><a class="logoa"   href="add.html">加入我们</a></li>--%>
                <li class="header_li"><input id="texts" type="text" onclick="cleartext('texts')" style="height:27px;width:190px; color:#ccc; font-family:'微软雅黑'; font-size:18px;" value="搜索教室或课程" /><input type="image" src="res/images/search.png" style=" border:1px solid #CCC; width:25px; margin-left:-30px; margin-top:0px; margin-bottom:-6px; border-bottom:none; border-top:none; border-right:none;" /></li>
                <li class="header_li"><a class="logoa"  href="<%=request.getContextPath()%>/login/login.jsp">登录</a></li>
            </ul>
        </div>
    </div>
</div>
<div style="width:100%; height:350px; background:url(res/images/new_banner2.jpg);">

</div>
<div  class="ddiv">
    <div class="teacher_center" style="height:1200px;" >
        <h1>学院介绍：</h1>
        <hr color="#46474C" class="hra" style="width:90px;"  size="1" />
        <hr color="#BAC9C6"  class="hrb" style="width:910px; margin-left:198px;"  size="1" />
        <div align="center" class="photoblock">
            <h1 style="font-weight:100px; font-family:'微软雅黑'; font-size:32px; margin-left:0px; margin-bottom:50px;">照片墙</h1>
            <div class="photoblock-many">
                <a href="res/images/IMG_0466.JPG" title="Why“唯尔”？--- 拉丁语Veritas 真理的音译。长久以来，专注继续教育。">
                    <img src="res/images/IMG_0466_x.JPG" width="161" height="123" border="0" alt="" id="img-mwsf-2" class="photo" /></a>
                <a href="res/images/IMG_0464.JPG" title="我们专注于提高学生的综合素质能力,而非纯粹的应试教育"><img src="res/images/IMG_0464_x.JPG" width="161" height="123" border="0" alt="" id="img-mwsf-14" class="photo" /></a>
                <a href="res/images/IMG_0485.JPG" title="让教育回归于教育"><img src="res/images/IMG_0485_x.JPG" width="161" height="123" border="0" alt="" id="img-mwsf-5" class="photo" /></a>
                <a href="res/images/IMG_0475.JPG" title="因为我们专注于一切教育的本质:追求真理。"><img src="res/images/IMG_0475_x.JPG" width="161" height="123" border="0" alt="" id="img-mwsf-6" class="photo" /></a>
                <a href="res/images/IMG_0474.JPG" title="当我们总是浮于表面，只追逐分数本身的时候，我们辛苦而又麻木的教育，我们不求甚解，不去探寻知识背后的关联。"><img src="res/images/IMG_0474_x.JPG" width="161" height="123" border="0" alt="" id="img-mwsf-16" class="photo" /></a>
                <a href="res/images/IMG_0458.JPG" title="我们忘记了语言是文化与思维的载体，机械的记忆永远无法真正掌握知识"><img src="res/images/IMG_0458_x.JPG" width="161" height="123" border="0" alt="" id="img-mwsf-20" class="photo" /></a>
                <a href="res/images/IMG_0460.JPG" title="唯尔的尔--- 学生。一切教育的主体，也是我们服务的主体。"><img src="res/images/IMG_0460_x.JPG" width="161" height="123" border="0" alt="" id="img-mwsf-21" class="photo" /></a>
                <a href="res/images/IMG_0483.JPG"><img src="res/images/IMG_0483_x.JPG" width="161" height="123" border="0" alt="" id="img-mwsf-25" class="photo" /></a>
                <a href="res/images/IMG_0476.JPG" title="我们不做高高在上的说教者，我们不是知识的复读机，我们希望陪伴你们，引领你们经历人生中第一次的全力付出。"><img src="res/images/IMG_0476_x.JPG" width="161" height="123" border="0" alt="" id="img-mwsf-27" class="photo" /></a>
            </div>
            <h1 style="font-weight:100px; font-family:'微软雅黑'; margin-left:-880px;">唯尔教育简介：</h1>
            <p style="margin-top:20px; font-size:15px;font-family:'微软雅黑'; color:#000; text-align:left; text-indent:2em; line-height:20px;">
                Why“唯尔”？--- 拉丁语Veritas 真理的音译。长久以来，专注继续教育,我们专注于提高学生的综合素质能力,而非纯粹的应试教育,让教育回归于教育
                我们只专注于教育本身
                因为我们忽略了一切教育的本质：追求真理。当我们总是浮于表面，只追逐分数本身的时候，我们辛苦而又麻木的教育，我们不求甚解，不去探寻知识背后的关联。我们忘记了语言是文化与思维的载体，机械的记忆与翻译永远不会让我们达到master的境界。
            </p>
            <h1 style="font-weight:100px; font-family:'微软雅黑'; margin-left:-880px;">唯尔的特色：</h1>
            <p style="margin-top:10px; font-size:15px; color:#000; text-align:left; text-indent:2em; font-family:'微软雅黑';">真正注重学术和学生的最优秀的老师,
                专注教育本身,而非用于应试考试,让教育回归教育,提高学生的综合素质,挖掘学生的兴趣和潜力.
            </p>

            <h1 style="font-weight:100px; font-family:'微软雅黑'; margin-left:-880px;">唯尔的优势：</h1>
            <p style="margin-top:20px; font-size:15px;font-family:'微软雅黑'; color:#000; text-align:left; text-indent:2em; line-height:20px;">
                每天十小时，精确到每小时的任务安排高分，帮助你获得真正的知识与能力</p>

        </div>

        <div style="width:550px;margin:20px auto;">
        </div>

    </div>
</div>

<a name="foot"></a>
<!--底部-->
<div class="foot">
    <div class="foot_all" >
        <div class="foot_left">
            <div class="foot_left_one">
                <ul>
                    <li class="foot_left_one_li" style="color:#fff; margin-top:-7px; margin-left:6px;">学院介绍</li>
                    <li class="foot_left_one_li" style="margin-top:4px;" ><a style="color:#9A9EA7;" href="production.jsp">关于学院</a></li>
                    <li class="foot_left_one_li">服务条款</li>
                    <li class="foot_left_one_li">隐私保护</li>
                    <li class="foot_left_one_li"><a style="color:#9A9EA7;" href="#foot">联系我们</a></li>
                </ul>
            </div>
            <div class="foot_left_two">
                <ul>
                    <li class="foot_left_two_li" style="color:#fff; margin-top:-5px; margin-left:21px;">课程介绍</li>
                    <li class="foot_left_two_li" style="margin-top:5px;"><a style="color:#9A9EA7;" href="#center_title">了解课程</a></li>
                    <li class="foot_left_two_li"><a style="color:#9A9EA7;" href="production.jsp">学院优势</a></li>
                    <li class="foot_left_two_li"><a style="color:#9A9EA7;" href="teachers.jsp">师资力量</a></li>
                </ul>
            </div>
            <div class="foot_left_three">
                <ul>
                    <li class="foot_left_three_li" style="margin-left:21px; color:#fff; margin-top:-6px;" >如何报名</li>
                    <li class="foot_left_three_li" style="margin-top:5px; margin-left:20px;  margin-top:6px;"><a style="color:#9A9EA7;" href="#foot">报名</a></li>
                </ul>
            </div>
        </div>
        <div class="foot_right">
            <p style="  color:#fff; font-size:14px;
	" >联系我们</p>
            <p style=" color:#fff; font-size:29px;"><img src="res/images/call.png" style=" margin-bottom:-3px; margin-right:10px;"  />400-000-0000</p>
            <p style=" color:#9A9EA7; font-size:14px;">传真：0991-15000000000</p>
            <p style=" color:#9A9EA7; font-size:14px; margin-top:-6px;">联系电话：15000000000</p>
            <p style=" color:#9A9EA7; font-size:14px; line-height:20px; margin-top:1px;">  更多模板：<a href="http://www.cssmoban.com/" target="_blank">模板之家</a></p>
        </div>
    </div>
</div>
<div class="foot_bom">

</div>
</body>
</html>