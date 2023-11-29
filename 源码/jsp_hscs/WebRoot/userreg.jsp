<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!doctype html>
<html>
<head>
<meta >
<title>高中家校互联系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="qtimages/css/bootstrap.css" rel="stylesheet">
<link href="qtimages/css/style.css" rel="stylesheet">
<link href="qtimages/css/fonts.css" rel="stylesheet">
<link href="qtimages/css/animate.css" rel="stylesheet">
<link href="qtimages/css/plugins.css" rel="stylesheet">
<link href="qtimages/css/responsive.css" rel="stylesheet">
<link href="qtimages/css/settings.css" rel="stylesheet">
<link href="qtimages/css/captions.css" rel="stylesheet">
<script src="js/jquery.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></head>
 <% 
HashMap ext = new HashMap(); 
ext.put("issh","否"); 
new CommDAO().insert(request,response,"yonghuzhuce",ext,true,false,"index.jsp"); 
%>

<body>
<div id="wrap">
  <div class="main-inner-content">
    <header id="header" class="section cover header-bg" data-bg="qtimages/slider.jpg">
      <%@ include file="qttop.jsp"%>
      <div id="rev_slider_1_1_wrapper" class="" style="margin:0px auto;padding:0px;margin-top:0px;margin-bottom:0px;max-height:1950px;">
        <div id="rev_slider_1_1" class="rev_slider fullwidthabanner" style="display:none;max-height:1950px;height:1950px; padding-top:40px;">
         
		 
		 
		 <div style=" margin:0 auto; width:1200px;  box-shadow: darkgrey 10px 10px 30px 5px">
				<div style="background-color:#CCCC66; height:50px;  font-size:20px; line-height:50px; padding-left:20px;"><strong>用户注册</strong></div>		
						
						 <form  action="userreg.jsp?f=f"  name="f1"  onsubmit="return checkform();">
						<table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#58AC22" style="border-collapse:collapse">
                        
                            <tr>
                              <td width="15%">用户名：</td>
                              <td colspan="2"><input name='yonghuming' type='text' id='yonghuming' value='' onblur='checkform()'  /><label id='clabelyonghuming' />
                                &nbsp;*</td>
                            </tr>
                            <tr>
                              <td>密码：</td>
                              <td width="27%"><input name='mima' type='password' id='mima' value='' onblur='checkform()'  /><label id='clabelmima' />
                                &nbsp;* 
                              </td>
                              <td width="58%">确认密码：
                                <input name='mima2' type='password' id='mima2' value='' onblur='checkform()'>  <label id='clabelmima2' /> </td>
                            </tr>
                            <tr>
                              <td>姓名：</td>
                              <td colspan="2"><input name='xingming' type='text' id='xingming' value='' onblur='checkform()'  /><label id='clabelxingming' />
                                &nbsp;*</td>
                            </tr>
                            <tr height="48px">
                              <td>性别：</td>
                              <td colspan="2"><select name='xingbie' id='xingbie' style=" height:29px; border:solid 1px #000000; color:#666666">
                                  <option value="男">男</option>
                                  <option value="女">女</option>
                              </select></td>
                            </tr>
                            <tr>
                              <td>出生年月：</td>
                              <td colspan="2"><input name='chushengnianyue' type='text' id='chushengnianyue' value='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" /></td>
                            </tr>
                            <tr>
                              <td>QQ：</td>
                              <td colspan="2"><input name='QQ' type='text' id='QQ' value='' onblur='checkform()'  /> <label id='clabelQQ' /></td>
                            </tr>
                            <tr>
                              <td>邮箱：</td>
                              <td colspan="2"><input name='youxiang' type='text' id='youxiang' value='' onblur='checkform()'  /> <label id='clabelyouxiang' /></td>
                            </tr>
                            <tr>
                              <td>手机：</td>
                              <td colspan="2"><input name='dianhua' type='text' id='dianhua' value='' onblur='checkform()'  /> <label id='clabeldianhua' /></td>
                            </tr>
                            <tr>
                              <td>身份证：</td>
                              <td colspan="2"><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='checkform()'  /> <label id='clabelshenfenzheng' /> </td>
                            </tr>
                            <tr>
                              <td>头像：</td>
                              <td colspan="2"><input name='touxiang' type='text' id='touxiang' size='50' value='' />
                                &nbsp;
                                <input name="button" type='button' onClick="up('touxiang')" value='上传' /></td>
                            </tr>
                            <tr>
                              <td>地址：</td>
                              <td colspan="2"><input name='dizhi' type='text' id='dizhi' value='' size='50' /></td>
                            </tr>
                            <tr>
                              <td>备注：</td>
                              <td colspan="2"><textarea name='beizhu' cols='50' rows='5' id='beizhu'></textarea></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td colspan="2"><input type="submit" name="Submit5" value="提交" onClick="return check();"/>
                                  <input type="reset" name="Submit22" value="重置" /></td>
                            </tr>
                        </table>
					    </form>
						
						
						

						</div>
						
						
						
          <div class="tp-bannertimer tp-bottom hidden"></div>
        </div>
      </div>
      <script type="text/javascript">

								
				var setREVStartSize = function() {
			 		var	tpopt = new Object(); 
						tpopt.startwidth = 1170;
						tpopt.startheight = 950;
						tpopt.container = jQuery('#rev_slider_1_1');
						tpopt.fullScreen = "off";
						tpopt.forceFullWidth="off";

					tpopt.container.closest(".rev_slider_wrapper").css({height:tpopt.container.height()});tpopt.width=parseInt(tpopt.container.width(),0);tpopt.height=parseInt(tpopt.container.height(),0);tpopt.bw=tpopt.width/tpopt.startwidth;tpopt.bh=tpopt.height/tpopt.startheight;if(tpopt.bh>tpopt.bw)tpopt.bh=tpopt.bw;if(tpopt.bh<tpopt.bw)tpopt.bw=tpopt.bh;if(tpopt.bw<tpopt.bh)tpopt.bh=tpopt.bw;if(tpopt.bh>1){tpopt.bw=1;tpopt.bh=1}if(tpopt.bw>1){tpopt.bw=1;tpopt.bh=1}tpopt.height=Math.round(tpopt.startheight*(tpopt.width/tpopt.startwidth));if(tpopt.height>tpopt.startheight&&tpopt.autoHeight!="on")tpopt.height=tpopt.startheight;if(tpopt.fullScreen=="on"){tpopt.height=tpopt.bw*tpopt.startheight;var cow=tpopt.container.parent().width();var coh=jQuery(window).height();if(tpopt.fullScreenOffsetContainer!=undefined){try{var offcontainers=tpopt.fullScreenOffsetContainer.split(",");jQuery.each(offcontainers,function(e,t){coh=coh-jQuery(t).outerHeight(true);if(coh<tpopt.minFullScreenHeight)coh=tpopt.minFullScreenHeight})}catch(e){}}tpopt.container.parent().height(coh);tpopt.container.height(coh);tpopt.container.closest(".rev_slider_wrapper").height(coh);tpopt.container.closest(".forcefullwidth_wrapper_tp_banner").find(".tp-fullwidth-forcer").height(coh);tpopt.container.css({height:"100%"});tpopt.height=coh}else{tpopt.container.height(tpopt.height);tpopt.container.closest(".rev_slider_wrapper").height(tpopt.height);tpopt.container.closest(".forcefullwidth_wrapper_tp_banner").find(".tp-fullwidth-forcer").height(tpopt.height)}
				 }	
				
				// CALL PLACEHOLDER
				setREVStartSize();
				
				
				var tpj=jQuery;				
				tpj.noConflict();				
				var revapi1;
				
				tpj(document).ready(function() {
				
				if(tpj('#rev_slider_1_1').revolution == undefined)
					revslider_showDoubleJqueryError('#rev_slider_1_1');
				else
				   revapi1 = tpj('#rev_slider_1_1').show().revolution(
					{
						dottedOverlay:"none",
						delay:9000,
						startwidth:1170,
						startheight:950,
						hideThumbs:200,
						thumbWidth:100,
						thumbHeight:50,
						thumbAmount:2,
						navigationType:"bullet",
						navigationArrows:"solo",
						navigationStyle:"round",
						touchenabled:"on",
						onHoverStop:"on",
						swipe_velocity: 0.7,
						swipe_min_touches: 1,
						swipe_max_touches: 1,
						drag_block_vertical: false,					
						keyboardNavigation:"off",
						navigationHAlign:"center",
						navigationVAlign:"bottom",
						navigationHOffset:0,
						navigationVOffset:20,
						soloArrowLeftHalign:"left",
						soloArrowLeftValign:"center",
						soloArrowLeftHOffset:20,
						soloArrowLeftVOffset:0,
						soloArrowRightHalign:"right",
						soloArrowRightValign:"center",
						soloArrowRightHOffset:20,
						soloArrowRightVOffset:0,
						shadow:0,
						fullWidth:"on",
						fullScreen:"off",
						spinner:"spinner0",
						stopLoop:"off",
						stopAfterLoops:-1,
						stopAtSlide:-1,
						shuffle:"off",
						autoHeight:"off",						
						forceFullWidth:"off",							
						hideThumbsOnMobile:"off",
						hideNavDelayOnMobile:1500,						
						hideBulletsOnMobile:"off",
						hideArrowsOnMobile:"off",
						hideThumbsUnderResolution:0,
						hideSliderAtLimit:0,
						hideCaptionAtLimit:0,
						hideAllCaptionAtLilmit:0,
						startWithSlide:0,
						fullScreenOffsetContainer: ""	
					});
									
				});	//ready
				
			</script> 
    </header>
    <div id="page-content">
      
     
      
     
     <%@ include file="yqlj.jsp"%>
    </div>
  </div>
  <%@ include file="qtdown.jsp"%>
  <div class="sb-slidebar sb-right">
    <div class="sb-menu-trigger"></div>
  </div>
</div>
<script src="js/easing.js"></script> 
<script src="js/hoverIntent.js"></script> 
<script src="js/superfish.js"></script> 
<script src="js/bootstrap.js"></script> 
<script src="js/countto.js"></script> 
<script src="js/waypoint.js"></script> 
<script src="js/typer.js"></script> 
<script src="js/flexslider.js"></script> 
<script src="js/caroufredsel.js"></script> 
<script src="js/wow.js"></script> 
<script src="js/donutchart.js"></script> 
<script src="js/magnificpopup.js"></script> 
<script src="js/masonry.js"></script> 
<script src="js/sidebar.js"></script> 
<script src="js/tweecool.js"></script> 
<script src="js/isotope.js"></script> 
<script src="js/contact.js"></script> 
<script src="js/functions.js"></script> 
<script src="js/jquery.plugins.min.js"></script> 
<script src="js/jquery.revolution.min.js"></script>
</body>
</html>
</html>


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script type="text/javascript" src="js/popup.js"></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
var yonghumingobj = document.getElementById("yonghuming");  
if(yonghumingobj.value==""){  
document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>请输入用户名</font>";  
return false;  
}else{
document.getElementById("clabelyonghuming").innerHTML="  ";  
}  
  
var yonghumingobj = document.getElementById("yonghuming");  
if(yonghumingobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yonghuzhuce&col=yonghuming&value="+yonghumingobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>用户名已存在</font>";  
return false;
}else{document.getElementById("clabelyonghuming").innerHTML="  ";  
}  
}  
var mimaobj = document.getElementById("mima");  
if(mimaobj.value==""){  
document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";  
return false;  
}else{
document.getElementById("clabelmima").innerHTML="  ";  
}  

var mima2obj = document.getElementById("mima2");  
if(mima2obj.value==""){  
document.getElementById("clabelmima2").innerHTML="&nbsp;&nbsp;<font color=red>请再次输入密码</font>";  
return false;  
}else{
document.getElementById("clabelmima2").innerHTML="  ";  
}

if(mima2obj.value!=mimaobj.value){  
document.getElementById("clabelmima2").innerHTML="&nbsp;&nbsp;<font color=red>两次密码输入不一致</font>";  
return false;  
}else{
document.getElementById("clabelmima2").innerHTML="  ";  
}
 
  
var xingmingobj = document.getElementById("xingming");  
if(xingmingobj.value==""){  
document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";  
return false;  
}else{
document.getElementById("clabelxingming").innerHTML="  ";  
}  


var QQobj = document.getElementById("QQ");  
if(QQobj.value!=""){  
if(QQobj.value.length>12||isNaN(QQobj.value)){ 
document.getElementById("clabelQQ").innerHTML="&nbsp;&nbsp;<font color=red>联系QQ必须为12位以内数字</font>";  
return false;
}else{  
document.getElementById("clabelQQ").innerHTML="";  
}  
}  

var youxiangobj = document.getElementById("youxiang");  
if(youxiangobj.value!=""){  
if(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(youxiangobj.value))
{ 
document.getElementById("clabelyouxiang").innerHTML="";  
}else{  
document.getElementById("clabelyouxiang").innerHTML="&nbsp;&nbsp;<font color=red>必需邮箱格式</font>";  
return false;
}  
}  
  
var dianhuaobj = document.getElementById("dianhua");  
if(dianhuaobj.value!=""){  
if(/^1[3|4|5|8][0-9]\d{4,8}$/.test(dianhuaobj.value))
{ 
document.getElementById("clabeldianhua").innerHTML="";  
}else{  
document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>必需手机格式</font>";  
return false;
}  
}  

var shenfenzhengobj = document.getElementById("shenfenzheng");  
if(shenfenzhengobj.value!=""){  
if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhengobj.value))
{ 
document.getElementById("clabelshenfenzheng").innerHTML="";  
}else{  
document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>必需身份证格式</font>";  
return false;
}  
}  



return true;   
}   
popheight=450;
</script>  
