<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=kechengbiao.xls");
%>
<html>
  <head>
    <title>课程表</title>
  </head>

  <body >
  <p>已有课程表列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>周一</td>    <td bgcolor='#CCFFFF'>课程名</td>    <td bgcolor='#CCFFFF'>周二</td>    <td bgcolor='#CCFFFF'>课程名一</td>    <td bgcolor='#CCFFFF'>周三</td>    <td bgcolor='#CCFFFF'>课程名二</td>    <td bgcolor='#CCFFFF'>周四</td>    <td bgcolor='#CCFFFF'>课程名三</td>    <td bgcolor='#CCFFFF'>周五</td>    <td bgcolor='#CCFFFF'>课程名四</td>    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "kechengbiao_list.jsp?1=1"; 
    String sql =  "select * from kechengbiao where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("zhouyi") %></td>    <td><%=map.get("kechengming") %></td>    <td><%=map.get("zhouer") %></td>    <td><%=map.get("kechengmingyi") %></td>    <td><%=map.get("zhousan") %></td>    <td><%=map.get("kechengminger") %></td>    <td><%=map.get("zhousi") %></td>    <td><%=map.get("kechengmingsan") %></td>    <td><%=map.get("zhouwu") %></td>    <td><%=map.get("kechengmingsi") %></td>    
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

