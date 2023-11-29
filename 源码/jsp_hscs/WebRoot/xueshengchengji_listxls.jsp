<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xueshengchengji.xls");
%>
<html>
  <head>
    <title>学生成绩</title>
  </head>

  <body >
  <p>已有学生成绩列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>成绩单号</td>    <td bgcolor='#CCFFFF'>家长账号</td>    <td bgcolor='#CCFFFF'>家长姓名</td>    <td bgcolor='#CCFFFF'>学生学号</td>    <td bgcolor='#CCFFFF'>学生姓名</td>    <td bgcolor='#CCFFFF'>班级</td>    <td bgcolor='#CCFFFF'>总成绩</td>        <td bgcolor='#CCFFFF' width='90' align='center'>成绩走向图</td>    <td bgcolor='#CCFFFF'>教师号</td>    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "xueshengchengji_list.jsp?1=1"; 
    String sql =  "select * from xueshengchengji where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("chengjidanhao") %></td>    <td><%=map.get("jiachangzhanghao") %></td>    <td><%=map.get("jiachangxingming") %></td>    <td><%=map.get("xueshengxuehao") %></td>    <td><%=map.get("xueshengxingming") %></td>    <td><%=map.get("banji") %></td>    <td><%=map.get("zongchengji") %></td>        <td width='90' align='center'><a href='<%=map.get("chengjizouxiangtu") %>' target='_blank'><img src='<%=map.get("chengjizouxiangtu") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("jiaoshihao") %></td>    
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

