<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<!DOCTYPE html>--%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>教室风采</title>
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

<body>
	<!--顶部-->
       <div class="header" >
        	<div class="header_all">
        	<div class="header_logo" ><a href="index.html"><img src="res/images/logo.png"/></a></div>
            <div class="header_div">
                <ul class="header_ul">
                    <li class="header_li"><a class="logoa"  href="index.jsp">首页</a></li>
                    <li class="header_li"><a class="logoa"  href="production.jsp">学院介绍</a></li>
                    <li class="header_li"><a class="logoa"  href="teachers.jsp">教师风采</a></li>
<%--                    <li class="header_li"><a class="logoa"  href="coursesOne.html">课程介绍</li>--%>
<%--                    <li class="header_li"><a class="logoa"  href="index.html#read">推荐阅读</a></li>--%>
<%--                    <li class="header_li"><a class="logoa"  href="add.html">加入我们</a></li>--%>
                    <li class="header_li"><input id="texts" type="text" onclick="cleartext('texts')" style="height:27px;width:190px; color:#ccc; font-family:'微软雅黑'; font-size:18px;" value="搜索教室或课程" /><input type="image" src="res/images/search.png" style=" border:1px solid #CCC; width:25px; margin-left:-30px; margin-top:0px; margin-bottom:-6px; border-bottom:none; border-top:none; border-right:none;" /></li>
                    <li class="header_li"><a class="logoa"  href="<%=request.getContextPath()%>/login/login.jsp">登录</a></li>
                </ul>
            </div>
            </div>
        </div>
        <div style="width:100%; height:350px; background:url(res/images/new_banner2.jpg);">
        
        </div>
        <!--中-->
      <div  class="ddiv" style="border:1px solid #fff; background-color:#fff;">
        <div class="teacher_center">
        	<div  class="teachers_a" >
        	<div class="ta"><img src="res/images/banner_30.jpg" /> </div>
                <h1>曾帅</h1>
                <p>简介：大学讲师，十年计算机教学经验，毕业于中国地质大学计算机专业，武汉大学软件双学位，英美软件工程硕士，英国阿伯丁大学访问学者。专业从事计算机教学10年，拥有者丰富的教学经验。</p>
            </div>
            <div  class="teachers_b" >
        	<div class="tb"><img src="res/images/banner32.jpg" /> </div>
                <h1>陈玉洁</h1>
                <p>新疆师范大学英语专业学生，热爱英语，兴趣爱好广泛，在新疆师范大学黑眼睛摄影协会担任社长一职。喜爱音乐，擅长演奏手风琴等乐器。
                  曾参与ERASMUS intensive program 代表中国学生在德国进行短期交流
                  曾作为交换生就读于台北中国文化大学英国语文学系
                  曾在香港安达集团有限公司进行实习工作并通过了国际商业体验策划案
                  获得校级英语演讲比赛第一名，英语综合能力大赛第三名，以及外国语学院优秀学生干部等称号。</p>
            </div>
            
            <div  class="teachers_c" >
        	<div class="tc"><img src="res/images/banner35.jpg"/> </div>
                <h1>付臻臻 Fran</h1>
                <p>托福口语一战28 听力27
2011年CCTV英语风采大赛新疆赛区冠军
2009年到2011年 美国协和大学CUW英语专业交换教育
英语专八水平
擅长托福口语教学和其他日常/商务口语能力训练</p>
            </div>
            <a name="tctwo"></a>
            <div  class="teachers_d" >
        	<div class="td"><img src="res/images/banner_27.jpg"/> </div>
                <h1>古丽扎 Giselle</h1>
                <p>
原新东方教育科技集团教学培训师。
雅思口语满分得主。
CCTV杯全国英语演讲大赛全国总决赛前十强。
外研社杯全国英语演讲大赛特邀评委。
素有“英伦玫瑰”之称，纯正的英式英语和独特的个人魅力让她在学生中广受喜爱。从事英语教学多年，卓越的工作能力也饱受业界认可，2011年获新东方教育科技集团教师赛课一等奖。严谨的工作态度和其成熟的教学技巧使得一批又一批学员在她的指导下突破口语7分大关。</p>
            </div>
            
            <a name="tcfour"></a>
            <div  class="teachers_e" >
        	<div class="te"><img src="res/images/banner_29.jpg"/> </div>
                <h1>蒋夏清</h1>
                <p>原新东方托福口语名师
托福口语29分
TESOL 高级国际教师资格认证
地道美式英语
CCTV杯英语演讲比赛新疆赛区第一名
所带考生频频突破口语23分大关

英语专业科班出生，专业功底扎实，2013年赴悉尼参加TESOL高级国际教师资格认证，期间因表现突出，被赋予唯一一个优秀称号。授课方式轻松愉悦，激情饱满，善于创设场景，让学生身临其境于地道的纯英文课堂。</p>
            </div>
            <a name="tcthree"></a>
            <div  class="teachers_f" >
        	<div class="tf"><img src="res/images/banner_28.jpg"/> </div>
                <h1>李玲儿 Anne</h1>
                <p>原新东方国外部特级教师。
托福雅思听力阅读满分得主。
十余年国外考试教学经验。
曾创造4次课雅思写作由4分---6.5分的惊人战绩。
主张考试培训要遵循语言教育的规律，贯通读写，让学生从输入输出，真正提高学生知识累积和教育能力，为学生提供合适的一战式留学服务。</p>
            </div>
            
             <div  class="teachers_g" >
        	<div class="tg"><img src="res/images/banner33.jpg"/> </div>
                <h1>李媛媛 Sylvia</h1>
                <p>丰富的文学教育经历，有众多的文学作品，可以帮助学生提升文学素养。</p>
            </div>
            
            <div  class="teachers_y" >
        	<div class="ty"><img src="res/images/唯尔教育_首页2_203.jpg"/> </div>
                <h1>Grace</h1>
                <p>英语专八，人事部二级笔译。2012年希望之星英语风采大赛新疆赛区冠军。2011至2013年蝉联三届全国大学生英语竞赛特等奖。</p>
            </div>
            
            
            <div  class="teachers_x" >
        	<div class="tx"><img src="res/images/banner31.jpg"/> </div>
                <h1>战慧婕</h1>
                <p>新疆大学英语翻译专业硕士，二级翻译，专业八级，四年教学经验。语法及写作基本功扎实，温柔有耐心。</p>
            </div>
            
            <div  class="teachers_z" >
        	<div class="tz"><img src="res/images/banner34.jpg"/> </div>
                <h1>张娜</h1>
                <p>新疆大学英语专业毕业，专业八级，标准美式英语，丰富的英语授课经验。活泼开朗的性格深受学生的喜爱。</p>
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
                    	<li class="foot_left_one_li" style="margin-top:4px;" ><a style="color:#9A9EA7;" href="production.html">关于学院</a></li>
                    	<li class="foot_left_one_li">服务条款</li>
                    	<li class="foot_left_one_li">隐私保护</li>
                    	<li class="foot_left_one_li"><a style="color:#9A9EA7;" href="#foot">联系我们</a></li>
                    </ul>
                </div>
                <div class="foot_left_two">
                	<ul>
                    	<li class="foot_left_two_li" style="color:#fff; margin-top:-5px; margin-left:21px;">课程介绍</li>
                    	<li class="foot_left_two_li" style="margin-top:5px;"><a style="color:#9A9EA7;" href="#center_title">了解课程</a></li>
                    	<li class="foot_left_two_li"><a style="color:#9A9EA7;" href="production.html">学院优势</a></li>
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
				<p style=" color:#fff; font-size:29px;"><img src="images/call.png" style=" margin-bottom:-3px; margin-right:10px;"  />400-000-0000</p>
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
