<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=banjixiangce.xls");
%>
<html>
  <head>
    <title>班级相册</title>
  </head>

  <body >
  <p>已有班级相册列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>相册编号</td>    <td bgcolor='#CCFFFF'>班级</td>    <td bgcolor='#CCFFFF'>相册名称</td>        <td bgcolor='#CCFFFF' width='90' align='center'>首页照片</td>    <td bgcolor='#CCFFFF'>发布人</td>    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "banjixiangce_list.jsp?1=1"; 
    String sql =  "select * from banjixiangce where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("xiangcebianhao") %></td>    <td><%=map.get("banji") %></td>    <td><%=map.get("xiangcemingcheng") %></td>        <td width='90' align='center'><a href='<%=map.get("shouyezhaopian") %>' target='_blank'><img src='<%=map.get("shouyezhaopian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("faburen") %></td>    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

