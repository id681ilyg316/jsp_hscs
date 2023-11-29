<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>课程表详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"kechengbiao");
     %>
  课程表详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>周一：</td><td width='39%'><%=m.get("kechengming")%></td>
</tr><tr>
<td width='11%'>周二：</td><td width='39%'><%=m.get("kechengmingyi")%></td></tr>
<tr>
<td width='11%'>周三：</td><td width='39%'><%=m.get("kechengminger")%></td>
</tr><tr>
<td width='11%'>周四：</td><td width='39%'><%=m.get("kechengmingsan")%></td>
</tr><tr>
<td width='11%'>周五：</td><td width='39%'><%=m.get("kechengmingsi")%></td>

</tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


