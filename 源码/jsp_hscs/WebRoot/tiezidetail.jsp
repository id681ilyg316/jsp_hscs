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
 <%
  if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}
  String id=request.getParameter("id");
  HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
ext.put("faburen",request.getSession().getAttribute("username"));
ext.put("fid",id);
ext.put("bankuai","");
ext.put("biaoti","");
ext.put("leixing","");
ext.put("fujian","");
}
new CommDAO().insert(request,response,"tiezi",ext,true,false,""); 
%>
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


		<table width="96%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
                      <tr>
                        <td height="104" valign="top">
						
						
						
						<%
    HashMap m = new CommDAO().getmap(id,"tiezi");
     %>
                            <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
                              <tr>
                                <td width="13%">标题：</td>
                                <td width="87%"><%=m.get("biaoti")%> &nbsp;<img src="bbs/<%=m.get("leixing")%>.gif" width="18" height="18"> 发帖人：<%=m.get("faburen")%> <%
								if(m.get("fujian").equals(""))
								{}
								else
								{
									out.print("<a href='"+m.get("fujian")+"'>附件下载</a>");
								}
								%></td>
                              </tr>
                              <tr>
                                <td>内容：</td>
                                <td height="100"><%=m.get("neirong")%></td>
                              </tr>
                              <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                              </tr>
                            </table>
                        
                        </td>
                      </tr>
                      <tr>
                        <td align="right"><table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
                            <tr>
                              <td colspan="2">已有回帖如下：</td>
                            </tr>
							  <% 
    String url = "tiezidetail.jsp?1=1"; 
    String sql =  "select * from tiezi where fid="+id+" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
                            <tr>
                              <td width="13%"><p>回复人:</p>
                                  <p><%=map.get("faburen")%></p></td>
                              <td width="87%" height="100"><%=map.get("neirong")%></td>
                            </tr>
                            <%
						  	}
						  %>
                            <tr>
                              <td colspan="2">我也来回一个：</td>
                            </tr>
                            <tr>
                              <td colspan="2"><form name="form1" action="?f=f&id=<%=id%>">
                                  <textarea name="neirong" cols="70" rows="5" id="neirong"></textarea>
                                  <input type="submit" name="Submit" value="回复">
                                  <input name="hf" type="hidden" id="hf" value="1">
                              </form></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td align="right"><a href="bbs.jsp" >返回</a></td>
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

