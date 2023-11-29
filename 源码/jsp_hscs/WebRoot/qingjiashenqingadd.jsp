<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!doctype html>
<html>
<head>
<meta >
<title>请假申请</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="描述">
<meta name="author" content="yanglin">
<link href="qtimages/css/bootstrap.css" rel="stylesheet">
<link href="qtimages/css/style.css" rel="stylesheet">
<link href="qtimages/css/fonts.css" rel="stylesheet">
<link href="qtimages/css/animate.css" rel="stylesheet">
<link href="qtimages/css/plugins.css" rel="stylesheet">
<link href="qtimages/css/responsive.css" rel="stylesheet">
<link href="qtimages/css/settings.css" rel="stylesheet">
<link href="qtimages/css/captions.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
.STYLE1 {
	color: #009933;
	font-weight: bold;
	font-size: 18px;
}
-->
</style>
</head>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}
  String id="";

 
  
 

 HashMap mssdq = new CommDAO().getmaps("jiachangzhanghao",(String)request.getSession().getAttribute("username"),"jiachangxinxi");
 String jiachangzhanghao="";  	String jiachangxingming="";  	String xueshengxuehao="";  	String xueshengxingming="";  	String banji="";  	String jiaoshihao="";  	
 jiachangzhanghao=(String)mssdq.get("jiachangzhanghao");  	jiachangxingming=(String)mssdq.get("jiachangxingming");  	xueshengxuehao=(String)mssdq.get("xueshengxuehao");  	xueshengxingming=(String)mssdq.get("xueshengxingming");  	banji=(String)mssdq.get("banji");  	jiaoshihao=(String)mssdq.get("jiaoshihao");  	

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	
}
function gow()
{
	document.location.href="qingjiashenqingadd.jsp?id=<%=id%>";
}
</script>


<body>
<div id="wrap">
  <div class="main-inner-content">
    <header id="header" class="section cover header-bg" data-bg="qtimages/slider.jpg">
    
     <%@ include file="qttop.jsp"%>
    </header>
    <div class="page-heading">
<div class="container">
<div class="row">
<div class="col-md-6">
<div class="page-title-area">
<h2 class="bottom-0 page-title">请假申请</h2>
</div>
</div>
<div class="col-md-6 text-right">
<!--<div class="breadcrumbs">
<ul class="bottom-0 list-unstyled">
<li><a href="#"><i class="fa fa-home"></i></a></li>
<li><a href="#">项目介绍</a></li>
<li><span>关于我们</span></li>
</ul>
</div>-->
</div>
</div>
</div>
</div>
    <div class="content-sidebar" id="content-wrap">
<div class="container">
<div class="row nospace">


		
  <% 
  
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){



ext.put("issh","待审核");



new CommDAO().insert(request,response,"qingjiashenqing",ext,true,false,""); 

 }
%>
   <form  action="qingjiashenqingadd.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">请假单号：</td><td><input name='qingjiadanhao' type='text' id='qingjiadanhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">家长账号：</td><td><input name='jiachangzhanghao' type='text' id='jiachangzhanghao' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr><script language="javascript">document.form1.jiachangzhanghao.value='<%=jiachangzhanghao%>';document.form1.jiachangzhanghao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">家长姓名：</td><td><input name='jiachangxingming' type='text' id='jiachangxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.jiachangxingming.value='<%=jiachangxingming%>';document.form1.jiachangxingming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">学生学号：</td><td><input name='xueshengxuehao' type='text' id='xueshengxuehao' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.xueshengxuehao.value='<%=xueshengxuehao%>';document.form1.xueshengxuehao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">学生姓名：</td><td><input name='xueshengxingming' type='text' id='xueshengxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.xueshengxingming.value='<%=xueshengxingming%>';document.form1.xueshengxingming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">班级：</td><td><input name='banji' type='text' id='banji' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.banji.value='<%=banji%>';document.form1.banji.setAttribute("readOnly",'true');</script>		<tr><td  width="200">教师号：</td><td><input name='jiaoshihao' type='text' id='jiaoshihao' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.jiaoshihao.value='<%=jiaoshihao%>';document.form1.jiaoshihao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">请假原因：</td><td><textarea name='qingjiayuanyin' cols='50' rows='5' id='qingjiayuanyin' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return checkform();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</table>
  </form>

		
		
</div> 
</div> 
</div>

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
</html></html>

