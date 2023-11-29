<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!doctype html>
<html>
<head>
<meta >
<title>在线论坛</title>
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
<% String bk=request.getParameter("bk"); %>
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
<h2 class="bottom-0 page-title">在线论坛</h2>
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


		<table width="96%" border="0" align="left" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" class="newsline" style="border-collapse:collapse">
                          <tr>
                            <td height="104" valign="top"><table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
                                <tr>
                                  <td width="30" bgcolor="#EBE2FE">序号</td>
                                  <td width="352" bgcolor='#EBE2FE'>标题</td>
                                  <td width="48" bgcolor='#EBE2FE'>类型</td>
                                  <td width="60" bgcolor='#EBE2FE'>发帖人</td>
                                  <td width="130" align="center" bgcolor="#EBE2FE">发布时间</td>
                                  <td width="65" align="center" bgcolor="#EBE2FE">已有回帖</td>
                                </tr>
                                 <% 

  	 new CommDAO().delete(request,"tiezi"); 
    String url = "tiezi_list.jsp?1=1"; 
    String sql =  "select * from tiezi where bankuai='"+bk+"'";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
                                <tr>
                                  <td width="30"><%=i%></td>
                                  <td><a href="tiezidetail.jsp?id=<%=map.get("id") %>"><%=map.get("biaoti") %></a></td>
                                  <td><img src="bbs/<%=map.get("leixing") %>.gif" width="18" height="18"></td>
                                  <td><%=map.get("faburen") %></td>
                                  <td width="130" align="center"><%=map.get("addtime") %></td>
                                  <td width="65" align="center"><%=new CommDAO().gettzs((String)map.get("id")) %></td>
                                </tr>
	<%
  }
   %>
                            </table></td>
                          </tr>
                          <tr>
                            <td align="right"><a href="tieziadd.jsp?bk=<%=bk%>">我要发帖</a> <a href="bbs.jsp" onClick="javascript:history.back();">返回</a></td>
                          </tr>
                        </table>

		
		
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

