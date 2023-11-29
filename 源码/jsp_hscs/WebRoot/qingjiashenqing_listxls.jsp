<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=qingjiashenqing.xls");
%>
<html>
  <head>
    <title>请假申请</title>
  </head>

  <body >
  <p>已有请假申请列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>请假单号</td>    <td bgcolor='#CCFFFF'>家长账号</td>    <td bgcolor='#CCFFFF'>家长姓名</td>    <td bgcolor='#CCFFFF'>学生学号</td>    <td bgcolor='#CCFFFF'>学生姓名</td>    <td bgcolor='#CCFFFF'>班级</td>    <td bgcolor='#CCFFFF'>教师号</td>        <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td><td bgcolor='#CCFFFF' width='120'>审核回复</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "qingjiashenqing_list.jsp?1=1"; 
    String sql =  "select * from qingjiashenqing where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("qingjiadanhao") %></td>    <td><%=map.get("jiachangzhanghao") %></td>    <td><%=map.get("jiachangxingming") %></td>    <td><%=map.get("xueshengxuehao") %></td>    <td><%=map.get("xueshengxingming") %></td>    <td><%=map.get("banji") %></td>    <td><%=map.get("jiaoshihao") %></td>        <td align='center'><a href="sh2.jsp?id=<%=map.get("id")%>&tablename=qingjiashenqing"><%=map.get("issh")%></a></td><td><%=map.get("shhf")%></td>
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

