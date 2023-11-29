<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>请假申请详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"qingjiashenqing");
     %>
  请假申请详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>请假单号：</td><td width='39%'><%=m.get("qingjiadanhao")%></td><td width='11%'>家长账号：</td><td width='39%'><%=m.get("jiachangzhanghao")%></td></tr><tr><td width='11%'>家长姓名：</td><td width='39%'><%=m.get("jiachangxingming")%></td><td width='11%'>学生学号：</td><td width='39%'><%=m.get("xueshengxuehao")%></td></tr><tr><td width='11%'>学生姓名：</td><td width='39%'><%=m.get("xueshengxingming")%></td><td width='11%'>班级：</td><td width='39%'><%=m.get("banji")%></td></tr><tr><td width='11%'>教师号：</td><td width='39%'><%=m.get("jiaoshihao")%></td><td width='11%'>请假原因：</td><td width='39%'><%=m.get("qingjiayuanyin")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


