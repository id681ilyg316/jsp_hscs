<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>学生成绩详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"xueshengchengji");
     %>
  学生成绩详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>成绩单号：</td><td width='39%'><%=m.get("chengjidanhao")%></td><td  rowspan=8 align=center><a href=<%=m.get("chengjizouxiangtu")%> target=_blank><img src=<%=m.get("chengjizouxiangtu")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>家长账号：</td><td width='39%'><%=m.get("jiachangzhanghao")%></td></tr><tr><td width='11%' height=44>家长姓名：</td><td width='39%'><%=m.get("jiachangxingming")%></td></tr><tr><td width='11%' height=44>学生学号：</td><td width='39%'><%=m.get("xueshengxuehao")%></td></tr><tr><td width='11%' height=44>学生姓名：</td><td width='39%'><%=m.get("xueshengxingming")%></td></tr><tr><td width='11%' height=44>班级：</td><td width='39%'><%=m.get("banji")%></td></tr><tr><td width='11%' height=44>总成绩：</td><td width='39%'><%=m.get("zongchengji")%></td></tr><tr><td width='11%' height=44>教师号：</td><td width='39%'><%=m.get("jiaoshihao")%></td></tr><tr><td width='11%' height=100  >各科明细：</td><td width='39%' colspan=2 height=100 ><%=m.get("gekemingxi")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


