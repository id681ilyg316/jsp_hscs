<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=tiezi.xls");
%>
<html>
  <head>
    <title>帖子</title>
  </head>

  <body >
  <p>已有帖子列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>版块</td>    <td bgcolor='#CCFFFF'>标题</td>    <td bgcolor='#CCFFFF'>类型</td>    <td bgcolor='#CCFFFF'>内容</td>    <td bgcolor='#CCFFFF'>附件</td>    <td bgcolor='#CCFFFF'>发布人</td>    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "tiezi_list.jsp?1=1"; 
    String sql =  "select * from tiezi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("bankuai") %></td>    <td><%=map.get("biaoti") %></td>    <td><%=map.get("leixing") %></td>    <td><%=map.get("neirong") %></td>    <td><a href='<%=map.get("fujian") %>' target='_blank'>下载</a></td>    <td><%=map.get("faburen") %></td>    
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

