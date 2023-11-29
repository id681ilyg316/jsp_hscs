<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>班级相册详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"banjixiangce");
     %>
  班级相册详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>相册编号：</td><td width='39%'><%=m.get("xiangcebianhao")%></td><td  rowspan=4 align=center><a href=<%=m.get("shouyezhaopian")%> target=_blank><img src=<%=m.get("shouyezhaopian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>班级：</td><td width='39%'><%=m.get("banji")%></td></tr><tr><td width='11%' height=44>相册名称：</td><td width='39%'><%=m.get("xiangcemingcheng")%></td></tr><tr><td width='11%' height=44>发布人：</td><td width='39%'><%=m.get("faburen")%></td></tr><tr><td width='11%' height=100  >相册：</td><td width='39%' colspan=2 height=100 ><%=m.get("xiangce")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


