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
<body>

<div class="header" >

    <div class="header_all">
        <div class="header_logo" ><a href="index.html"><img src="res/images/logo.png"/></a></div>
        <div class="header_div">
            <ul class="header_ul">
                <li class="header_li"><a class="logoa"  href="index.jsp">首页</a></li>
                <li class="header_li"><a class="logoa"  href="production.jsp">学院介绍</a></li>
                <li class="header_li"><a class="logoa"  href="teachers.jsp">教师风采</li>
<%--                <li class="header_li"><a class="logoa"  href="coursesOne.html">课程介绍</li>--%>
<%--                <li class="header_li"><a class="logoa"  href="index.html#read">推荐阅读</a></li>--%>
<%--                <li class="header_li"><a class="logoa"  href="add.html">加入我们</a></li>--%>
                <li class="header_li"><input id="texts" type="text" onclick="cleartext('texts')" style="height:27px;width:190px; color:#ccc; font-family:'微软雅黑'; font-size:18px;" value="搜索教室或课程" /><input type="image" src="res/images/search.png" style=" border:1px solid #CCC; width:25px; margin-left:-30px; margin-top:0px; margin-bottom:-6px; border-bottom:none; border-top:none; border-right:none;" /></li>
                <li class="header_li"><a class="logoa"  href="<%=request.getContextPath()%>/login/login.jsp">登录</a></li>
            </ul>
        </div>
    </div>
</div>
<!--green-->
<div class="header_bom">

    <div id="js_banner" class="banner">
        <ul id="js_banner_img" class="banner_img clear">
            <li class="bgli01">
                <div class="banner_inner">
                    <div class="child child1" ><img  style=" width:1920px;" src="res/images/new_banner1.jpg" /></div><!-- data-z="2"与data-z="3"表示两个图层进退场的顺序有区别 -->
                </div>
            </li>
            <li class="bgli02">
                <div class="banner_inner">
                    <div class="child child1"><img src="res/images/new_banner1.jpg" /></div>
                </div>
            </li>
            <li class="bgli03">
                <div class="banner_inner">
                    <div class="child child1"><img src="res/images/new_banner1.jpg" /></div>
                </div>
            </li>
        </ul>
    </div>

</div>
<!---->
<div class="center">
    <div class="center_all">
        <div class="center_video">
<%--            <embed src="http://player.youku.com/player.php/sid/14567794/v.swf" width="650" height="430" autostart="true">--%>

<%--            </embed>--%>
            <img width="650" height="430" src="res/images/banner_29.jpg"/>
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
            <div class="readone-image-container"><img src="res/images/banner_21.png" class="news-image"></div>
            <div class="read_div" >
                <p class="read-summary" style="" >Pharmacy partnership with local high school wins city award The Nashville chamber awarded  Lipscomb ...</p>
            </div>
        </div>
        <div class="read_two" >
            <div class="readone-image-container"><img src="res/images/banner_22.png" class="news-image"></div>
            <div class="read_div" >
                <p class="read-summary"> Pharmacy partnership with local high school wins city award The Nashville chamber awarded  Lipscomb ...</p>
            </div>
        </div>
        <div class="read_three" >
            <div class="readone-image-container"><img src="res/images/banner_39.png" class="news-image"></div>
            <div class="read_div">
                <p class="read-summary"> Pharmacy partnership with local high school wins city award The Nashville chamber awarded  Lipscomb ...</p>
            </div>
        </div>
        <div class="read_four" >
            <div class="readone-image-container"><img src="res/images/banner_24.png" class="news-image"></div>
            <div class="read_div">
                <p class="read-summary"> Pharmacy partnership with local high school wins city award The Nashville chamber awarded  Lipscomb ...</p>
            </div>
        </div>
        <div class="read_five" >
            <div class="readone-image-container"><img src="res/images/banner_25.png" class="news-image"></div>
            <div class="read_div">
                <p class="read-summary"> Pharmacy partnership with local high school wins city award The Nashville chamber awarded  Lipscomb ...</p>
            </div>
        </div>
        <div class="read_six" >
            <div class="readone-image-container"><img src="res/images/banner_26.png" class="news-image"></div>
            <div class="read_div">
                <p class="read-summary"> Pharmacy partnership with local high school wins city award The Nashville chamber awarded  Lipscomb ...</p>
            </div>
        </div>
    </div>
</div>
<!--底部-->
<a name="foot"></a>
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
<style>
    /*@charset "utf-8";*/
    /*!* CSS Document *!*/
    /*div{border:0px solid transparent;}*/
    /**{*/
    /*    margin:0px auto;*/
    /*    padding:0px;*/
    /*    list-style-type:none;*/
    /*}*/
    /*a{*/
    /*    text-decoration:none;*/
    /*}*/
    /*body{*/
    /*    width:100%; height:auto;}*/
    /*.header{*/
    /*    background-color:#3A5357;*/
    /*    width:100%;*/

    /*    height:90px;*/
    /*}*/
    /*img{border:none;}*/
    /*.header_all{*/
    /*    margin:0 auto;*/
    /*    width:1350px;*/
    /*}*/
    /*.header_logo{*/
    /*    position:absolute;*/
    /*    border:0px solid #fff;*/
    /*    margin-top:2px;*/
    /*}*/
    /*.header_div{*/
    /*    color:#fff;*/
    /*    height:80px;*/
    /*    width:810px;*/
    /*    font-size:20px;*/
    /*    margin-left:540px;*/
    /*    font-family:"微软雅黑";*/
    /*}*/
    /*.header_li_inp{*/
    /*    height:50px;*/
    /*    width:190px;*/
    /*}*/
    /*.header_li{*/
    /*    list-style:none;*/
    /*    float:left; padding-top:30px; padding-left:27px;}*/
    /*.logoa{*/
    /*    color:#fff;*/
    /*    text-decoration:none;*/
    /*    transition:all 0.3s;*/
    /*}*/
    /*.logoa:hover{*/
    /*    color:#529AB0;*/
    /*}*/
    /*.header_bom{*/
    /*    width:100%;*/

    /*    height:620px;}*/
    /*.center{*/
    /*    width:100%;*/

    /*    height:830px;}*/
    /*.center_tc{*/
    /*    width:100%;*/

    /*    height:550px;*/
    /*    background:url(images/banner_18.jpg);}*/
    /*.center_cour{*/
    /*    width:100%;*/

    /*    height:610px;}*/
    /*.center_zb{*/
    /*    width:100%;*/
    /*    height:460px;*/

    /*    background:url(images/banner_19.jpg);}*/
    /*.center_read{*/
    /*    width:100%;*/

    /*    height:890px;*/
    /*    background:#fff;}*/
    /*.read_all{*/
    /*    width:1220px;*/
    /*    height:800px;*/
    /*    margin:0 auto;*/
    /*}*/
    /*.foot{*/
    /*    width:100%;*/
    /*    height:350px;*/

    /*    background:#46474C;}*/
    /*.foot_left{*/
    /*    width:700px;*/
    /*    margin-top:8px;*/
    /*    margin-left:10px;*/
    /*    float:left;}*/
    /*.foot_left_one{*/
    /*    font-family:"微软雅黑";*/
    /*    font-size:14px;*/
    /*    width:150px;*/
    /*    float:left;*/
    /*    margin:63px 0px 0px 69px;*/
    /*    color:#9A9EA7;}*/
    /*.foot_left_one_li{*/
    /*    list-style:none;*/
    /*    width:150px;*/
    /*    margin-top:-1px;*/
    /*    margin-left:6px;*/
    /*    letter-spacing:1px;*/
    /*    text-align:center;*/
    /*    line-height:32px;}*/


    /*.foot_left_two{*/
    /*    font-family:"微软雅黑";*/
    /*    font-size:14px;	width:150px;*/
    /*    width:150px;*/

    /*    height:150px;*/
    /*    border:1px  dashed #9A9EA7;*/
    /*    border-bottom:none;*/
    /*    border-top:none;*/
    /*    border-right:none;*/
    /*    float:left;*/
    /*    margin:63px 0px 0px 80px;*/
    /*    color:#9A9EA7;}*/
    /*.foot_left_two_li{*/
    /*    list-style:none;*/
    /*    width:145px;*/
    /*    letter-spacing:2px;*/
    /*    line-height:31px;*/
    /*    margin-left:21px;}*/



    /*.foot_left_three{*/
    /*    font-family:"微软雅黑";*/
    /*    font-size:14px;*/
    /*    width:200px;*/
    /*    height:150px;*/
    /*    float:right;*/
    /*    border:1px  dashed #9A9EA7;*/
    /*    border-bottom:none;*/
    /*    border-top:none;*/
    /*    margin:63px 0px 0px 45px;*/
    /*    color:#9A9EA7;*/
    /*}*/
    /*.foot_left_three_li{*/
    /*    list-style:none;*/
    /*    width:150px;*/
    /*    letter-spacing:2px;*/
    /*    line-height:30px;}*/
    /*.foot_right{*/
    /*    margin-top:61px;*/
    /*    margin-left:19px;*/
    /*    width:370px;*/
    /*    line-height:40px;*/
    /*    float:left;}*/
    /*.foot_all{*/
    /*    height:260px;*/
    /*    width:1200px;*/
    /*}*/
    /*.foot_bom{*/
    /*    margin:0 auto;*/
    /*    width:1200px;*/
    /*    height:80px; margin-top:-80px;*/
    /*}*/
    /*.foot_right p{*/
    /*    letter-spacing:1px;*/
    /*    font-family:'微软雅黑';*/
    /*}*/
    /*.foot_bom p{*/
    /*    color:#9A9EA7;*/
    /*    text-align:center;*/
    /*    line-height:80px;*/
    /*    font-size:14px;*/
    /*    font-family:"微软雅黑";*/
    /*    letter-spacing:1px;*/
    /*}*/

    /*.titles{*/
    /*    width:1200px;*/
    /*    height:70px;*/
    /*    line-height:62px;*/
    /*    font-size:39px;*/
    /*    font-family:"微软雅黑";*/
    /*    color:#818588;*/
    /*    font-weight:600;*/
    /*}*/
    /*.left_img{*/
    /*    height:6px;*/
    /*    margin-left:-150px;*/
    /*    width:220px;*/
    /*    background-color:#F0F1F3;*/
    /*    margin-top:29px;*/
    /*    float:left;}*/
    /*.right_img{*/
    /*    height:6px;*/
    /*    width:550px;*/
    /*    background-color:#F0F1F3;*/
    /*    margin-top:29px;*/
    /*    margin-left:8px;*/
    /*    float:left;}*/
    /*.center_title{*/
    /*    margin-left:8px;*/
    /*    float:left;}*/

    /*.center_video{*/

    /*    width:650px;*/
    /*    height:430px;*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    border-radius: 5px;*/
    /*    float:left;*/
    /*}*/
    /*.center_right{*/
    /*    height:430px;*/
    /*    width:680px;*/
    /*    background:url(images/banner_05.png);*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    border-radius: 5px;*/
    /*    float:left;*/
    /*    margin-left:10px;*/
    /*}*/
    /*.center_right_dh{*/
    /*    overflow: hidden; text-overflow: ellipsis;  width:400px;*/
    /*    height:430px;*/
    /*    width:308px;*/
    /*    background-color:#E3E84D;*/
    /*    !*opacity:0.9;filter:alpha(opacity=70)*!*/
    /*    !*	-moz-border-radius: 5px;*!*/
    /*    !*	-webkit-border-radius: 5px;*!*/
    /*    !*	border-radius:0px 5px 5px 0px;*!*/
    /*    float:right;*/
    /*    transition:all 0.3s;*/
    /*    text-align:center;*/
    /*}*/
    /*.center_right:hover .center_right_dh{*/
    /*    width:680px;*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    border-radius:5px 5px 5px 5px;*/
    /*    background-color:#E3E84D;*/
    /*}*/
    /*.center_right_dh h1{*/
    /*    margin-top:100px;*/
    /*    color:#444;*/
    /*    !*font-weight:200px; font-size:42px;*!*/
    /*}*/

    /*.center_right_dh h2{*/
    /*    margin-top:10px;*/
    /*    margin-left:-80px;*/
    /*    color:#444;*/
    /*    !*font-weight:200px; font-size:32px;*!*/
    /*}*/
    /*.center_right_dh_but{*/
    /*    border:1px solid #000;*/
    /*    width:142px;*/
    /*    color:#444;*/
    /*    height:40px;*/
    /*    margin-left:50px;*/
    /*    -moz-border-radius: 3px;*/
    /*    -webkit-border-radius: 3px;*/
    /*    border-radius: 3px;*/
    /*    margin-top:30px;*/
    /*}*/
    /*.center_left_bom_div_but{*/
    /*    border:1px solid #444;*/
    /*    position:absolute;*/
    /*    width:142px;*/
    /*    color:#444;*/
    /*    height:35px;*/
    /*    margin-left:200px;*/
    /*    -moz-border-radius: 3px;*/
    /*    -webkit-border-radius: 3px;*/
    /*    border-radius: 3px;*/
    /*    margin-top:70px;*/
    /*}*/
    /*.center_left_bom_div_but a{*/
    /*    line-height:35px;*/
    /*    text-decoration: none;*/
    /*    color:#444;*/
    /*    margin-left:38px;*/
    /*    font-family:"微软雅黑";*/

    /*}*/
    /*.center_right_dh_but a{*/
    /*    font-size:19px;*/
    /*    line-height:35px;*/
    /*    font-family:"微软雅黑";*/
    /*    text-decoration: none;*/
    /*    color:#000;*/
    /*}*/
    /*.center_right_dh_two{*/
    /*    margin-top:80px;*/
    /*}*/
    /*.center_right_dh_two h3{*/
    /*    margin-top:20px;*/
    /*    margin-left:-240px;*/
    /*    color:#444;*/
    /*}*/
    /*.center_right_dh_two_but{*/
    /*    border:1px solid #000;*/
    /*    margin-left:450px;*/
    /*    margin-top:35px;*/
    /*    width:142px;*/
    /*    height:40px;*/

    /*    -moz-border-radius: 3px;*/
    /*    -webkit-border-radius: 3px;*/
    /*    border-radius: 3px;*/
    /*}*/
    /*.center_right_dh_two_but a{*/
    /*    font-size:14px;*/
    /*    line-height:35px;*/
    /*    font-family:"微软雅黑";*/
    /*    text-decoration: none;*/
    /*    color:#000;*/
    /*}*/
    /*.center_right_dh_two p{*/
    /*    width:400px;*/
    /*    letter-spacing:2px;*/
    /*    font-family:"微软雅黑";*/
    /*    font-size:14px;*/
    /*    margin-left:200px;*/
    /*    line-height:30px;*/
    /*}*/
    /*.cen_bom_div{*/
    /*    overflow: hidden; text-overflow: ellipsis;  width:400px;*/
    /*    color:#444;*/
    /*    width:290px;*/
    /*    !*opacity:0.9;filter:alpha(opacity=70)*!*/
    /*    !*	-moz-border-radius: 5px;*!*/
    /*    !*	-webkit-border-radius: 5px;*!*/
    /*    !*	border-radius: 5px 5px 0px 0px;*!*/
    /*    background-color:#0F0;*/
    /*    height:70px;*/
    /*    margin-left:0px;*/
    /*    transition:height 0.3s;*/
    /*    font-family:"微软雅黑";*/
    /*}*/
    /*.center_cen_bom:hover  .cen_bom_div{*/
    /*    height:280px;*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    border-radius: 5px 5px 5px 5px;*/
    /*}*/
    /*.cen_bom_div .pone{*/
    /*    margin-top:25px;*/
    /*    width:234px;*/
    /*    margin-left:25px;*/
    /*    font-size:18px;*/
    /*}*/
    /*.cen_bom_div .ptwo{*/
    /*    font-size:18px;*/
    /*    width:234px;*/
    /*    margin-left:25px;*/
    /*    margin-top:20px;*/
    /*}*/
    /*.center_left_bom{*/
    /*    background-color:#CCC;*/
    /*    margin:420px 0px 0px 0px;*/
    /*    overflow: hidden; text-overflow: ellipsis;*/
    /*    float:left;*/
    /*    width:350px;*/
    /*    height:280px;*/
    /*    position:absolute;}*/
    /*.center_cen_bom{*/
    /*    background:url(images/banner_11.png);*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    border-radius: 5px;*/
    /*    height:280px;*/
    /*    width:290px;*/
    /*    position:absolute;*/
    /*    margin:420px 0px 0px 360px;*/
    /*}*/
    /*.center_cen_right_one{*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    border-radius: 5px;*/
    /*    height:280px;*/
    /*    width:250px;*/
    /*    margin:420px 0px 0px 660px;*/
    /*}*/
    /*.center_cen_right_two{*/
    /*    overflow: hidden; text-overflow: ellipsis;*/
    /*    background:url(images/banner_36.png);*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    border-radius: 5px;*/
    /*    height:280px;*/
    /*    width:420px;*/
    /*    position:absolute;*/
    /*    margin:-280px 0px 0px 920px;*/
    /*}*/
    /*.center_all{*/
    /*    margin:0 auto;*/
    /*    margin-top:60px;*/

    /*    width:1340px;*/
    /*}*/
    /*.cour_left{*/
    /*    background:url(images/banner_37.png);*/
    /*    width:370px;*/
    /*    float:left;*/
    /*    height:430px;*/
    /*    -moz-border-radius: 10px;*/
    /*    -webkit-border-radius: 10px;*/
    /*    border-radius: 10px;}*/
    /*.cour_left_div{*/
    /*    width:370px;*/
    /*    color:#fff;*/
    /*    font-family:"微软雅黑";*/
    /*    height:100px;*/
    /*    position:absolute;*/
    /*    background-color:#000;*/
    /*    margin-top:330px;*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    border-radius: 0px 0px 5px 5px;*/
    /*    opacity:0.7;filter:alpha(opacity=70)*/
    /*}*/

    /*.cour_cen_div{*/
    /*    width:370px;*/
    /*    color:#fff;*/
    /*    font-family:"微软雅黑";*/
    /*    height:100px;*/
    /*    position:absolute;*/
    /*    background-color:#000;*/
    /*    margin-top:330px;*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    border-radius: 0px 0px 5px 5px;*/
    /*    opacity:0.7;filter:alpha(opacity=70)*/
    /*}*/

    /*.cour_right_div{*/
    /*    width:370px;*/
    /*    color:#fff;*/
    /*    font-family:"微软雅黑";*/
    /*    height:100px;*/
    /*    position:absolute;*/
    /*    background-color:#000;*/
    /*    margin-top:330px;*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    border-radius: 0px 0px 5px 5px;*/
    /*    opacity:0.7;filter:alpha(opacity=70)*/
    /*}*/
    /*.cour_cen{*/
    /*    background:url(images/banner_38.png);*/
    /*    width:370px;*/
    /*    margin-left:100px;*/
    /*    height:430px;*/
    /*    float:left;*/
    /*    -moz-border-radius: 10px;*/
    /*    -webkit-border-radius: 10px;*/
    /*    border-radius: 10px;}*/
    /*.cour_right{*/
    /*    background:url(images/banner_39.png);*/
    /*    background-color:#F0F;*/
    /*    width:370px;*/
    /*    height:430px;*/
    /*    float:left;*/
    /*    margin-left:100px;*/
    /*    -moz-border-radius: 10px;*/
    /*    -webkit-border-radius: 10px;*/
    /*    border-radius: 10px;}*/
    /*.cour_all{*/
    /*    margin-top:50px;*/
    /*    margin:0 auto;*/
    /*    width:1320px;*/
    /*    height:430px;}*/

    /*.read_one{*/
    /*    width:310px;*/
    /*    !*background-color:fff; *!*/
    /*    height:350px;*/
    /*    float:left;*/
    /*    position:absolute;*/
    /*    margin-top:0px;*/
    /*    -moz-border-radius: 10px;*/
    /*    -webkit-border-radius: 10px;*/
    /*    border-radius: 10px;}*/

    /*.read_two{*/
    /*    width:310px;*/
    /*    background-color:#69F;*/
    /*    height:350px;*/
    /*    position:absolute;*/
    /*    float:left;*/
    /*    margin-top:0px;*/
    /*    margin-left:450px;*/
    /*    -moz-border-radius: 10px;*/
    /*    -webkit-border-radius: 10px;*/
    /*    border-radius: 10px;}*/

    /*.read_three{*/
    /*    width:310px;*/
    /*    height:350px;*/
    /*    float:left;*/
    /*    position:absolute;*/
    /*    margin-left:890px;*/
    /*    -moz-border-radius: 10px;*/
    /*    -webkit-border-radius: 10px;*/
    /*    border-radius: 10px;}*/

    /*.read_four{*/
    /*    width:310px;*/
    /*    height:350px;*/
    /*    -moz-border-radius: 10px;*/
    /*    -webkit-border-radius: 10px;*/
    /*    border-radius: 10px;*/
    /*    position:absolute;*/
    /*    margin:410px 0px 0px 0px}*/
    /*.read_five{*/
    /*    width:310px;*/
    /*    height:350px;*/
    /*    position:absolute;*/
    /*    -moz-border-radius: 10px;*/
    /*    -webkit-border-radius: 10px;*/
    /*    border-radius: 10px;*/
    /*    margin:410px 0px 0px 450px}*/
    /*.read_six{*/
    /*    width:310px;*/
    /*    position:absolute;*/
    /*    height:350px;*/
    /*    -moz-border-radius: 10px;*/
    /*    -webkit-border-radius: 10px;*/
    /*    border-radius: 10px;*/
    /*    margin:410px 0px 0px 890px}*/
    /*.tc_one{*/
    /*    width:240px;*/
    /*    background:url(images/banner_27.jpg);*/
    /*    float:left;overflow:hidden;*/
    /*    display:inline;*/
    /*    height:240px;*/
    /*    margin-top:80px;*/
    /*    border-radius:120px;*/
    /*    border:solid  3px;*/
    /*    transition:all 0.3s;*/
    /*    border-color:#fff;}*/
    /*.tc_one:hover{*/
    /*    border:solid  3px;*/
    /*    border-color:#3A5357;*/
    /*}*/
    /*.tc_two{*/
    /*    width:240px;*/
    /*    background:url(images/banner_28.jpg);*/
    /*    float:left;*/
    /*    display:inline;*/
    /*    transition:all 0.3s;*/
    /*    height:240px;*/
    /*    margin-left:100px;overflow:hidden;*/
    /*    margin-top:80px;*/
    /*    border-radius:120px;*/
    /*    border:solid rgb(100,100,100) 3px;*/
    /*    border-color:#fff;}*/
    /*.tc_two:hover{*/
    /*    border-color:#3A5357;*/
    /*}*/
    /*.tc_three{*/
    /*    width:240px;*/
    /*    display:inline;*/
    /*    background:url(images/banner_29.jpg);*/
    /*    float:left;*/
    /*    transition:all 0.3s;*/
    /*    height:240px;*/
    /*    margin-top:80px;*/
    /*    margin-left:100px;*/
    /*    border-radius:120px;*/
    /*    border:solid rgb(100,100,100) 3px;*/
    /*    border-color:#fff;}*/
    /*.tc_three:hover{*/
    /*    border-color:#3A5357;*/
    /*}*/
    /*.tc_four{*/
    /*    width:240px;*/
    /*    background:url(images/banner_30.jpg);*/
    /*    transition:all 0.3s;*/
    /*    float:left;*/
    /*    display:inline;*/
    /*    height:240px;*/
    /*    margin-left:100px;*/
    /*    margin-top:80px;*/
    /*    border-radius:120px;*/
    /*    border:solid rgb(100,100,100) 3px;*/
    /*    border-color:#fff;}*/
    /*.tc_four:hover{*/
    /*    border-color:#3A5357;*/
    /*}*/
    /*.tc_all{*/
    /*    height:550px;*/
    /*    width:1360px;*/
    /*    margin:0 auto;}*/
    /*.zb_all{*/
    /*    margin:0 auto;*/
    /*    width:1300px;*/
    /*    height:400px;}*/
    /*.zb_img{*/
    /*    background:url(images/banner_20.png);*/
    /*    height:308px;*/
    /*    -moz-border-radius: 7px;*/
    /*    -webkit-border-radius: 7px;*/
    /*    border-radius: 7px;*/
    /*    width:500px;*/
    /*    position:absolute;*/
    /*    margin:70px 0 0px 0px;}*/
    /*.zb_button_left{*/
    /*    background-color:#444;*/
    /*    height:47px;*/
    /*    margin-left:400px;*/
    /*    width:150px;*/
    /*    margin-top:327px;*/
    /*    float:left;*/
    /*    text-align:center;*/
    /*    -moz-border-radius: 7px;*/
    /*    -webkit-border-radius: 7px;*/
    /*    border-radius: 7px;*/
    /*    transition:all 0.1s;}*/
    /*.zb_button_left:hover{*/
    /*    background-color:#E2E639;}*/
    /*.zb_button_left:hover .lefta{*/
    /*    color:#000;}*/
    /*.zb_button_right{*/
    /*    background-color:#444;*/
    /*    height:47px;*/
    /*    transition:all 0.1s;*/
    /*    float:left;*/

    /*    margin-top:327px;*/
    /*    margin-left:18px;*/
    /*    width:150px;*/
    /*    text-align:center;*/
    /*    -moz-border-radius: 7px;*/
    /*    -webkit-border-radius: 7px;*/
    /*    border-radius: 7px;}*/
    /*.zb_button_right:hover{*/
    /*    background-color:#E2E639;}*/
    /*.zb_button_right:hover .leftb{*/
    /*    color:#000;}*/
    /*.zb_button_all{*/
    /*    height:330px;*/
    /*    width:770px;*/
    /*    margin:0px 0px 0px 523px;}*/
    /*.zb_button_left .lefta{*/
    /*    text-decoration: none;*/
    /*    line-height:45px;*/
    /*    color:#FFF;*/
    /*    transition:all 1s;*/
    /*    font-family:"微软雅黑";*/
    /*    font-size:18px;*/
    /*    letter-spacing:1px;*/
    /*}*/
    /*.zb_button_right .leftb{*/
    /*    text-decoration: none;*/
    /*    font-family:"微软雅黑";*/
    /*    transition:all 1s;*/
    /*    font-size:18px;*/
    /*    line-height:45px;*/
    /*    letter-spacing:1px;*/
    /*    color:#FFF;*/
    /*}*/
    /*.tc_wzOne{*/
    /*    color:#fff;*/
    /*    width:280px;*/
    /*    line-height:27px;*/
    /*    float:left;display:inline;*/
    /*    text-align:center;*/

    /*    font-family:"微软雅黑";*/
    /*    margin:350px 0px 0px -1310px;*/
    /*}*/
    /*.tc_wzOne p{*/
    /*    margin-top:10px;*/
    /*    text-align:left;*/
    /*    font-size:14px;*/
    /*    letter-spacing:2px;*/

    /*}*/
    /*.tc_wzTwo{*/
    /*    color:#fff;*/
    /*    width:280px;display:inline;*/
    /*    line-height:27px;*/
    /*    float:left;*/
    /*    text-align:center;*/
    /*    font-family:"微软雅黑";*/
    /*    margin:350px 0px 0px -962px;*/
    /*}*/
    /*.tc_wzTwo p{*/
    /*    text-align:left;*/
    /*    margin-top:10px;*/
    /*    font-size:14px;*/
    /*    letter-spacing:2px;*/

    /*}*/
    /*.tc_wzThree{*/
    /*    color:#fff;*/
    /*    width:280px;*/
    /*    line-height:27px;*/
    /*    float:left;*/
    /*    text-align:center;*/
    /*    font-family:"微软雅黑";*/
    /*    margin:350px 0px 0px -614px;*/
    /*}*/
    /*.tc_wzThree p{*/
    /*    text-align:left;*/
    /*    margin-top:10px;*/
    /*    font-size:14px;*/
    /*    letter-spacing:2px;*/

    /*}*/
    /*.tc_wzFour{*/
    /*    color:#fff;*/
    /*    width:280px;*/
    /*    line-height:27px;*/
    /*    float:left;*/
    /*    text-align:center;*/
    /*    font-family:"微软雅黑";*/
    /*    margin:350px 0px 0px -266px;*/
    /*}*/
    /*.tc_wzFour p{*/
    /*    margin-top:10px;*/
    /*    text-align:left;*/
    /*    font-size:14px;*/
    /*    letter-spacing:2px;*/

    /*}*/
    /*.tc_Look{*/
    /*    border:1px solid #fff;*/
    /*    text-align:center;*/
    /*    width:110px;*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    border-radius: 5px;*/
    /*    height:30px;*/
    /*    float:left;*/
    /*    margin:480px 0px 0px -70px;}*/
    /*.tc_Look a{*/
    /*    font-size:19px;*/
    /*    line-height:29px;*/
    /*    font-family:"微软雅黑";*/
    /*    text-decoration: none;*/
    /*    color:#fff;}*/
    /*.crt{*/
    /*    overflow: hidden; text-overflow: ellipsis;*/
    /*    color:#fff;*/
    /*    background-color:#2F9BE6;*/
    /*    margin-top:200px;*/
    /*    opacity:0.8;filter:alpha(opacity=70);*/
    /*    height:80px;*/
    /*    transition:all 0.2s;*/
    /*    padding-top:0px;*/
    /*    text-align:center;*/
    /*    font-family:'微软雅黑';}*/
    /*.center_cen_right_two:hover .crt{*/
    /*    height:280px;*/
    /*    margin-top:0px;*/
    /*    !*opacity:0.9;filter:alpha(opacity=70)*!*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    padding-top:30px;*/
    /*    border-radius: 5px;*/
    /*    background-color:#2F9BE6;*/
    /*}*/
    /*.crt p{*/
    /*    font-size:22px;*/
    /*}*/
    /*.crt_div{*/
    /*    margin-top:10px;*/
    /*    border:1px solid #fff;*/
    /*    width:142px;*/
    /*    height:40px;*/
    /*    -moz-border-radius: 3px;*/
    /*    margin-left:150px;*/
    /*    -webkit-border-radius: 3px;*/
    /*    border-radius: 3px;}*/
    /*.crt_div a{*/

    /*    font-size:19px;*/
    /*    line-height:35px;*/
    /*    font-family:"微软雅黑";*/
    /*    text-decoration: none;*/
    /*    color:#fff;}*/
    /*.center_cen_right_one{*/
    /*    color:#fff;*/
    /*    overflow: hidden;*/
    /*    background:url(images/banner_13.png) no-repeat;*/
    /*    transition:all 0.3s;*/
    /*}*/
    /*.center_cen_right_one:hover{*/
    /*    opacity:0.5;filter:alpha(opacity=70);}*/
    /*.center_cen_right_one_div{*/
    /*    height:400px;*/
    /*    position:relative;*/
    /*    margin-left:5px;*/
    /*    color:#FFF;*/
    /*    transition:all 0.3s;*/
    /*    margin-top:20px;*/
    /*    width:250px;*/
    /*    height:280px;*/
    /*}*/
    /*.center_cen_right_one_div:hover{*/
    /*    -moz-border-radius: 7px;*/
    /*    -webkit-border-radius: 7px;*/
    /*    border-radius: 7px;*/
    /*    color:#fff;*/
    /*}*/
    /*.center_left_bom_div{*/
    /*    background-color:#B7F856;*/
    /*    color:#B7F856;*/
    /*    position:relative;*/
    /*    width:360px;*/
    /*    transition:all 1s;*/
    /*    height:70px;*/
    /*}*/
    /*.center_left_bom:hover .center_left_bom_div{*/
    /*    height:110px;*/
    /*    color:#444;*/
    /*}*/
    /*.center_left_bom_div h2{*/
    /*    margin-left:20px;*/
    /*    margin-top:15px;*/
    /*    position:absolute;*/
    /*    font-family:"微软雅黑";*/
    /*    font-size:34px;}*/

    /*.center_left_bom_div h3{*/
    /*    margin-left:20px;*/
    /*    margin-top:60px;*/
    /*    position:absolute;}*/
    /*.center_left_bom_show{*/
    /*    width:360px;*/
    /*    height:220px;*/
    /*    margin-left:2px;*/
    /*    position:relative;*/
    /*    background:url(images/banner_09.png) no-repeat scroll 0px -190px;*/
    /*}*/
    /*.news-image{*/
    /*    width:310px;*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    border-radius: 0px 0px 10px 10px;*/
    /*    height:350px;*/
    /*}*/
    /*.read_div{*/
    /*    background-color:#38454D;*/
    /*    opacity:0.9;filter:alpha(opacity=70);*/
    /*    width:310px; height:195px; position:absolute; margin-top:-195px;*/
    /*    -moz-border-radius: 5px;*/
    /*    -webkit-border-radius: 5px;*/
    /*    border-radius: 0px 0px 10px 10px;*/
    /*}*/
    /*.readone-content-container{*/
    /*    font-size:20px;*/
    /*    margin-top:-120px;*/
    /*    color:#000;*/
    /*}*/
    /*.read-summary{*/
    /*    position:relative;*/
    /*    width: 250px;*/
    /*    font-size: 20px;*/
    /*    color:#fff;*/
    /*    font-weight: bold;*/
    /*    font-weight:100;*/
    /*    margin-top:20px;*/
    /*    font-family:"微软雅黑";*/
    /*    line-height: 30px;*/
    /*    text-align: center;*/
    /*}*/
    /*.v_show{width:100%; margin-top:-3px; overflow:hidden;position:relative;height:620px;}*/
    /*.v_cont{ width:6650px; height:620px;position:absolute;left:0px;top:0px;}*/
    /*.v_cont ul li{width:100%;height:620px;background:#f8f8f8;float:left;margin-top:3px;}*/

    /*!*---圆圈---*!*/
    /*.circle{position:absolute;left: 890px;top: 630px;}*/
    /*.circle li{width:13px;height:13px;float:left;margin-right:10px; border:3px solid #fff;*/
    /*    border-radius:120px;}*/
    /*.circle .circle-cur{}*/
    /*.circle-cur{*/
    /*    border:3px solid #666;*/
    /*    background:#666;*/
    /*    border-radius:120px;}*/
    /*.zb_title_text{*/
    /*    position:absolute;*/
    /*    margin-top:100px;*/
    /*    width:370px;*/
    /*    color:#fff;*/
    /*    line-height:20px;}*/
    /*.text_po{*/
    /*    margin-top:20px;*/
    /*    font-size:1px;*/
    /*    font-family:"微软雅黑";*/
    /*    letter-spacing:2px;}*/
    /*.text_pt{*/
    /*    margin-left:400px;*/
    /*    font-size:1px;*/
    /*    width:370px;*/
    /*    margin-top:140px;*/
    /*    color:#fff;*/
    /*    font-family:"微软雅黑";*/
    /*    letter-spacing:2px;*/
    /*    position:absolute;*/
    /*}*/
    /*.imgshow{*/
    /*    width:360px;*/
    /*    height:600px;*/
    /*    margin-left:1px;*/
    /*    padding-top:50px;*/
    /*    background:url(images/banner_09.png) no-repeat scroll 0px -50px;*/
    /*    transition:all 1s;*/
    /*}*/
    /*.imgshow:hover{*/
    /*    background:#fff;*/
    /*    margin-bottom:0px;*/
    /*    height:220px;*/
    /*    margin-top:55px;*/
    /*    background:url(images/banner_09.png) no-repeat scroll 0px -110px;*/
    /*!* 代码整理：懒人之家 www.lanrenzhijia.com *!*/

    /*.banner{width:100%;overflow:hidden;position:relative;}*/
    /*.banner_inner{position:relative;height:620px;width:1920px;margin:0 auto;}*/

    /*.banner_img{width:100%; }*/
    /*.banner_img li{float:left;width:1903px;position:relative; height:620px; }*/

    /*.banner_common{position:relative;width:990px;margin:0 auto}*/
    /*.banner_pre:hover, .banner_next:hover{opacity:1;filter:alpha(opacity=100)}*/
    /*.banner .control{width:130px;position:absolute;top:573px;left:50%;margin-left:-40px}*/
    /*.banner .control li{float:left;margin-left:10px;width:18px;height:18px;cursor:pointer;background:#fff}*/
    /*.banner .control li a{display:none}*/
    /*.banner .control li.current{background:#ff7f02}*/


</style>
</body>
<script type="text/javascript">

    $(function(){

        /*======next======*/
        $(".next a").click(function(){ nextscroll() });

        function nextscroll(){

            var vcon = $(".v_cont ");
            var offset = ($(".v_cont li").width())*-1;

            vcon.stop().animate({left:offset},"slow",function(){

                var firstItem = $(".v_cont ul li").first();
                vcon.find("ul").append(firstItem);
                $(this).css("left","0px");

                circle()

            });

        };


        function circle(){

            var currentItem = $(".v_cont ul li").first();
            var currentIndex = currentItem.attr("index");

            $(".circle li").removeClass("circle-cur");
            $(".circle li").eq(currentIndex).addClass("circle-cur");

        }

        setInterval(nextscroll,3000);

        /*======prev======*/
        $(".prev a").click(function(){

            var vcon = $(".v_cont ");
            var offset = ($(".v_cont li").width()*-1);

            var lastItem = $(".v_cont ul li").last();
            vcon.find("ul").prepend(lastItem);
            vcon.css("left",offset);
            vcon.animate({left:"0px"},"slow",function(){
                circle()
            })

        });

        /*======btn====circle======*/
        var animateEnd = 1;

        $(".circle li").click(function(){

            if(animateEnd==0){return;}

            $(this).addClass("circle-cur").siblings().removeClass("circle-cur");

            var nextindex = $(this).index();
            var currentindex = $(".v_cont li").first().attr("index");
            var curr = $(".v_cont li").first().clone();

            if(nextindex > currentindex){

                for (var i = 0; i < nextindex - currentindex; i++) {

                    var firstItem = $(".v_cont li").first();
                    $(".v_cont ul").append(firstItem);

                }

                $(".v_cont ul").prepend(curr);

                var offset = ($(".v_cont li").width())*-1;

                if(animateEnd==1){

                    animateEnd=0;
                    $(".v_cont").stop().animate({left:offset},"slow",function(){

                        $(".v_cont ul li").first().remove();
                        $(".v_cont").css("left","0px");
                        animateEnd=1;

                    });

                }

            }else{

                var curt = $(".v_cont li").last().clone();

                for (var i = 0; i < currentindex - nextindex; i++) {
                    var lastItem = $(".v_cont li").last();
                    $(".v_cont ul").prepend(lastItem);
                }

                $(".v_cont ul").append(curt);

                var offset = ($(".v_cont li").width())*-1;

                $(".v_cont").css("left",offset);


                if(animateEnd==1){

                    animateEnd=0;
                    $(".v_cont").stop().animate({left:"0px"},"slow",function(){

                        $(".v_cont ul li").last().remove();
                        animateEnd=1;

                    });

                }

            }

        });

    })

</script>
</html>