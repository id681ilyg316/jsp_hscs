<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>帖子</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有帖子列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  版块：<input name="bankuai" type="text" id="bankuai" style='border:solid 1px #000000; color:#666666' size="12" />  标题：<input name="biaoti" type="text" id="biaoti" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>版块</td>
    <td bgcolor='#CCFFFF'>标题</td>
    <td bgcolor='#CCFFFF'>类型</td>
    <td bgcolor='#CCFFFF'>内容</td>
    <td bgcolor='#CCFFFF'>附件</td>
    <td bgcolor='#CCFFFF'>发布人</td>
    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"tiezi"); 
    String url = "tiezi_list2.jsp?1=1"; 
    String sql =  "select * from tiezi where faburen='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("bankuai")=="" ||request.getParameter("bankuai")==null ){}else{sql=sql+" and bankuai like '%"+request.getParameter("bankuai")+"%'";}
if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("biaoti")+"%'";}
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
    <td><%=map.get("bankuai") %></td>
 <td><%=map.get("biaoti") %></td>
 <td><%=map.get("leixing") %></td>
 <td><%=map.get("neirong") %></td>
 <td><a href='<%=map.get("fujian") %>' target='_blank'>下载</a></td>
 <td><%=map.get("faburen") %></td>
 
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="tiezi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="tiezi_list2.jsp?scid=<%=map.get("id") %>" onclick="return confirm('真的要删除？')">删除</a> <!--qiatnalijne--> </td>
  </tr>
  	<%
  }
   %>
</table><br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

