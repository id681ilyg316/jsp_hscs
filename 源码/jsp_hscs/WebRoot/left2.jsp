<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title></title>
    <style media="all" type="text/css">
        html {scrollbar-3d-light-color:#C3DAF9; 
        scrollbar-face-color: #C3DAF9; 
        scrollbar-highlight-color: #C3DAF9; 
        scrollbar-shadow-color: #C3DAF9; 
        scrollbar-arrow-color: #fff; 
        scrollbar-base-color: #C3DAF9; 
        scrollbar-dark-shadow-color: #C3DAF9; 
        scrollbar-darkshadow-Color:#C3DAF9; }

        body,img,p,h1,h2,h3,h4,ul,dl,dt,dd {margin:0px;border:0px;padding:0px;}

body, h1,button,input,select,textarea,  fieldset,td{ font:12px/1.5 microsoft yahei, sans-serif,\5b8b\4f53; }
        body {color:#000;margin:0px;padding-left:3px; background-color:#c9defa; }
        a:link,a:visited {color:#333;text-decoration:none;}
        a:hover,a:active {color:#f60;text-decoration:underline;}
        li {list-style:none;}
        h2,h3,h4,input {font-size:12px;}
        .clear {clear:both;height:0;line-height:0;font-size:0}



        .main h3,.main li {background:url(images/index_bg.png) no-repeat;}

        .main .menutitle {background-position:0 -27px;}
        .main h3 {width:160px;height:21px;background-position: 0 0;padding-top:6px;cursor:pointer}
        .main h3 div {background:url(images/iconall.png) no-repeat;padding-left:30px;height:16px;line-height:16px}
        .main h3 .bt1 {background-position: 6px 0;}
        .main h3 .bt2 {background-position: 6px -21px;}
        .main h3 .bt3 {background-position: 6px -44px;}
        .main h3 .bt4 {background-position: 6px -64px;}
        .main h3 .bt5 {background-position: 6px -84px;}
        .main h3 .bt6 {background-position: 6px -102px;}
        .main h3 .bt7 {background-position: 6px -123px;}
        .main h3 .bt8 {background-position: 6px -144px;}
        .main h3 .bt9 {background-position: 6px -166px;}
        .main h3 .bt10 {background-position: 6px -188px;}
        .main h3 .bt11 {background-position: 6px -236px;}
        .main h3 .bt12 {background-position: 6px -213px;}
        .main ul{background:#ecf4ff;width:160px;padding:3px 0;}
        .main li {background-position: 6px -62px;padding-left:18px;height:25px;line-height:25px;border-bottom:1px solid #fff;}

        .main li .menustyle02,.main li .menustyle02:visited {color:Red;}
    </style>
    
</head>
<body style="margin: 0; border: 0;">



        <div class="main" id="menua">
		
			<h3 menuid="1"  id="menu1" onclick="showsubmenu(1)" toggleGroup="on" class="menutitle"><div class="bt1"><span>个人资料管理</span></div></h3>
				<ul id="submenu1">
					<li><a href="jiaoshixinxi_updt2.jsp" target="frmright">教师资料管理</a></li>
				</ul>

            <h3 menuid="2"  id="menu2" onclick="showsubmenu(2)" toggleGroup="on" class="menutitle"><div class="bt2"><span>家长信息管理</span></div></h3>
				<ul id="submenu2">
					<li><a href="jiachangxinxi_list2.jsp" target="frmright">家长信息查询</a></li>
				</ul>
			
			<h3 menuid="3"  id="menu3" onclick="showsubmenu(3)" toggleGroup="on" class="menutitle"><div class="bt3"><span>学生成绩管理</span></div></h3>
				<ul id="submenu3"><li><a href="xueshengchengji_list2.jsp" target="frmright">学生成绩查询</a></li>
				</ul>
			
			<h3 menuid="4"  id="menu4" onclick="showsubmenu(4)" toggleGroup="on" class="menutitle"><div class="bt4"><span>班级相册管理</span></div></h3>
				<ul id="submenu4">
					<li><a href="banjixiangce_add.jsp" target="frmright">班级相册添加</a></li>
					<li><a href="banjixiangce_list2.jsp" target="frmright">班级相册查询</a></li>
				</ul>
				
			<h3 menuid="5"  id="menu5" onclick="showsubmenu(5)" togglegroup="on" class="menutitle"><div class="bt5"><span>请假管理</span></div></h3>
				<ul id="submenu5">
					<li><a href="qingjiashenqing_list3.jsp" target="frmright">请假管理</a></li>
				</ul>
				
			<h3 menuid="6"  id="menu6" onclick="showsubmenu(6)" toggleGroup="on" class="menutitle"><div class="bt6"><span>课程表</span></div></h3>
				<ul id="submenu6">
					<li><a href="kechengbiao_add.jsp" target="frmright">课程表添加</a></li>
					<li><a href="kechengbiao_list.jsp" target="frmright">课程表查询</a></li>
				</ul>
				
			<h3 menuid="7"  id="menu7" onclick="showsubmenu(7)" togglegroup="on" class="menutitle"><div class="bt7"><span>教师论坛</span></div></h3>
				<ul id="submenu7">
					<li><a href="tiezi_list2.jsp" target="frmright">教师论坛</a></li>
				</ul>
			<h3 menuid="17"  id="menu17" onclick="showsubmenu(17)" togglegroup="on" class="menutitle"><div class="bt17"><span>家长论坛</span></div></h3>
				<ul id="submenu17">
					<li><a href="liuyanban_list.jsp" target="frmright">家长论坛</a></li>
				</ul>
	    </div>
        <script type="text/javascript">
             function initmenu()
             {
                var menu = document.getElementById("menua").getElementsByTagName("h3"); 
                var submenu = document.getElementById("menua").getElementsByTagName("ul"); 
                for(var i = 0; i < menu.length; i++)
                {
                    menu[i].className = "menutitle2";
                }
                for(var i = 0; i < submenu.length; i++)
                {
                    submenu[i].style.display = "none";
                }
             }
             function showsubmenu(index)
             {
                var menu = document.getElementById("menu" + index);
                var submenu = document.getElementById("submenu" + index);
                if (submenu.style.display == "")
                {
                    menu.className = "menutitle2";
                    submenu.style.display = "none";
                }
                else
                {
                    menu.className = "menutitle";
                    submenu.style.display = "";
                }
             }
             initmenu();
        </script>

    </form>
</body>
</html>


