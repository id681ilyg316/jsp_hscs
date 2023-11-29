<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>课程表</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有课程表列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  周一：<input name="zhouyi" type="text" id="zhouyi" style='border:solid 1px #000000; color:#666666' size="12" />  周二：<input name="zhouer" type="text" id="zhouer" style='border:solid 1px #000000; color:#666666' size="12" />  周三：<input name="zhousan" type="text" id="zhousan" style='border:solid 1px #000000; color:#666666' size="12" />  周四：<input name="zhousi" type="text" id="zhousi" style='border:solid 1px #000000; color:#666666' size="12" />  周五：<input name="zhouwu" type="text" id="zhouwu" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='kechengbiao_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>周一</td>
    <td bgcolor='#CCFFFF'>周二</td>
    <td bgcolor='#CCFFFF'>周三</td>
    <td bgcolor='#CCFFFF'>周四</td>
    <td bgcolor='#CCFFFF'>周五</td>
    
	
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"kechengbiao"); 
    String url = "kechengbiao_list.jsp?1=1"; 
    String sql =  "select * from kechengbiao where 1=1";
	
if(request.getParameter("zhouyi")=="" ||request.getParameter("zhouyi")==null ){}else{sql=sql+" and zhouyi like '%"+request.getParameter("zhouyi")+"%'";}
if(request.getParameter("zhouer")=="" ||request.getParameter("zhouer")==null ){}else{sql=sql+" and zhouer like '%"+request.getParameter("zhouer")+"%'";}
if(request.getParameter("zhousan")=="" ||request.getParameter("zhousan")==null ){}else{sql=sql+" and zhousan like '%"+request.getParameter("zhousan")+"%'";}
if(request.getParameter("zhousi")=="" ||request.getParameter("zhousi")==null ){}else{sql=sql+" and zhousi like '%"+request.getParameter("zhousi")+"%'";}
if(request.getParameter("zhouwu")=="" ||request.getParameter("zhouwu")==null ){}else{sql=sql+" and zhouwu like '%"+request.getParameter("zhouwu")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("kechengming") %></td>
    <td><%=map.get("kechengmingyi") %></td>
    <td><%=map.get("kechengminger") %></td>
    <td><%=map.get("kechengmingsan") %></td>
    <td><%=map.get("kechengmingsi") %></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="kechengbiao_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="kechengbiao_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="kechengbiaodetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

