<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>学生成绩</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有学生成绩列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  家长账号：<input name="jiachangzhanghao" type="text" id="jiachangzhanghao" style='border:solid 1px #000000; color:#666666' size="12" />  家长姓名：<input name="jiachangxingming" type="text" id="jiachangxingming" style='border:solid 1px #000000; color:#666666' size="12" />  学生学号：<input name="xueshengxuehao" type="text" id="xueshengxuehao" style='border:solid 1px #000000; color:#666666' size="12" />  学生姓名：<input name="xueshengxingming" type="text" id="xueshengxingming" style='border:solid 1px #000000; color:#666666' size="12" />  班级：<input name="banji" type="text" id="banji" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='xueshengchengji_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>成绩单号</td>
    <td bgcolor='#CCFFFF'>家长账号</td>
    <td bgcolor='#CCFFFF'>家长姓名</td>
    <td bgcolor='#CCFFFF'>学生学号</td>
    <td bgcolor='#CCFFFF'>学生姓名</td>
    <td bgcolor='#CCFFFF'>班级</td>
    <td bgcolor='#CCFFFF'>总成绩</td>
    
    <td bgcolor='#CCFFFF' width='90' align='center'>成绩走向图</td>
    <td bgcolor='#CCFFFF'>教师号</td>
    
	
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"xueshengchengji"); 
    String url = "xueshengchengji_list.jsp?1=1"; 
    String sql =  "select * from xueshengchengji where 1=1";
	
if(request.getParameter("jiachangzhanghao")=="" ||request.getParameter("jiachangzhanghao")==null ){}else{sql=sql+" and jiachangzhanghao like '%"+request.getParameter("jiachangzhanghao")+"%'";}
if(request.getParameter("jiachangxingming")=="" ||request.getParameter("jiachangxingming")==null ){}else{sql=sql+" and jiachangxingming like '%"+request.getParameter("jiachangxingming")+"%'";}
if(request.getParameter("xueshengxuehao")=="" ||request.getParameter("xueshengxuehao")==null ){}else{sql=sql+" and xueshengxuehao like '%"+request.getParameter("xueshengxuehao")+"%'";}
if(request.getParameter("xueshengxingming")=="" ||request.getParameter("xueshengxingming")==null ){}else{sql=sql+" and xueshengxingming like '%"+request.getParameter("xueshengxingming")+"%'";}
if(request.getParameter("banji")=="" ||request.getParameter("banji")==null ){}else{sql=sql+" and banji like '%"+request.getParameter("banji")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("chengjidanhao") %></td>
    <td><%=map.get("jiachangzhanghao") %></td>
    <td><%=map.get("jiachangxingming") %></td>
    <td><%=map.get("xueshengxuehao") %></td>
    <td><%=map.get("xueshengxingming") %></td>
    <td><%=map.get("banji") %></td>
    <td><%=map.get("zongchengji") %></td>
    
    <td width='90' align='center'><a href='<%=map.get("chengjizouxiangtu") %>' target='_blank'><img src='<%=map.get("chengjizouxiangtu") %>' width=88 height=99 border=0 /></a></td>
    <td><%=map.get("jiaoshihao") %></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="xueshengchengji_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="xueshengchengji_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="xueshengchengjidetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

