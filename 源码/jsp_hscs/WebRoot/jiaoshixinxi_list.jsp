<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教师信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有教师信息列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  教师号：<input name="jiaoshihao" type="text" id="jiaoshihao" style='border:solid 1px #000000; color:#666666' size="12" />  教师姓名：<input name="jiaoshixingming" type="text" id="jiaoshixingming" style='border:solid 1px #000000; color:#666666' size="12" /> 性别：<select name='xingbie' id='xingbie' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="男">男</option><option value="女">女</option></select> 级别：<select name='jibie' id='jibie' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="特级教师">特级教师</option><option value="高级教师">高级教师</option><option value="普通教师">普通教师</option></select>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='jiaoshixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>教师号</td>
    <td bgcolor='#CCFFFF'>密码</td>
    <td bgcolor='#CCFFFF'>教师姓名</td>
    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>
    <td bgcolor='#CCFFFF'>级别</td>
    <td bgcolor='#CCFFFF'>手机</td>
    <td bgcolor='#CCFFFF'>邮箱</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>照片</td>
    
    
	
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"jiaoshixinxi"); 
    String url = "jiaoshixinxi_list.jsp?1=1"; 
    String sql =  "select * from jiaoshixinxi where 1=1";
	
if(request.getParameter("jiaoshihao")=="" ||request.getParameter("jiaoshihao")==null ){}else{sql=sql+" and jiaoshihao like '%"+request.getParameter("jiaoshihao")+"%'";}
if(request.getParameter("jiaoshixingming")=="" ||request.getParameter("jiaoshixingming")==null ){}else{sql=sql+" and jiaoshixingming like '%"+request.getParameter("jiaoshixingming")+"%'";}
if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}
if(request.getParameter("jibie")=="" ||request.getParameter("jibie")==null ){}else{sql=sql+" and jibie like '%"+request.getParameter("jibie")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("jiaoshihao") %></td>
    <td><%=map.get("mima") %></td>
    <td><%=map.get("jiaoshixingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td><%=map.get("jibie") %></td>
    <td><%=map.get("shouji") %></td>
    <td><%=map.get("youxiang") %></td>
    <td width='90' align='center'><a href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>
    
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="jiaoshixinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="jiaoshixinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="jiaoshixinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

