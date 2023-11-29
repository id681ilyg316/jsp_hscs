<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>班级相册</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有班级相册列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  相册编号：<input name="xiangcebianhao" type="text" id="xiangcebianhao" style='border:solid 1px #000000; color:#666666' size="12" />  班级：<%=Info.getselect("banji","banjixinxi","banji"," 1=1 ")%>  相册名称：<input name="xiangcemingcheng" type="text" id="xiangcemingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  发布人：<input name="faburen" type="text" id="faburen" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>相册编号</td>
    <td bgcolor='#CCFFFF'>班级</td>
    <td bgcolor='#CCFFFF'>相册名称</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>首页照片</td>
    <td bgcolor='#CCFFFF'>发布人</td>
    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"banjixiangce"); 
    String url = "banjixiangce_list2.jsp?1=1"; 
    String sql =  "select * from banjixiangce where faburen='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("xiangcebianhao")=="" ||request.getParameter("xiangcebianhao")==null ){}else{sql=sql+" and xiangcebianhao like '%"+request.getParameter("xiangcebianhao")+"%'";}
if(request.getParameter("banji")=="" ||request.getParameter("banji")==null ){}else{sql=sql+" and banji like '%"+request.getParameter("banji")+"%'";}
if(request.getParameter("xiangcemingcheng")=="" ||request.getParameter("xiangcemingcheng")==null ){}else{sql=sql+" and xiangcemingcheng like '%"+request.getParameter("xiangcemingcheng")+"%'";}
if(request.getParameter("faburen")=="" ||request.getParameter("faburen")==null ){}else{sql=sql+" and faburen like '%"+request.getParameter("faburen")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("xiangcebianhao") %></td>
 <td><%=map.get("banji") %></td>
 <td><%=map.get("xiangcemingcheng") %></td>
 
 <td width='90'><a href='<%=map.get("shouyezhaopian") %>' target='_blank'><img src='<%=map.get("shouyezhaopian") %>' width=88 height=99 border=0 /></a></td>
 <td><%=map.get("faburen") %></td>
 
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="banjixiangce_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="banjixiangce_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="banjixiangcedetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
  
${page.info }


  </body>
</html>

