<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>帖子</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"tiezi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"tiezi"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="tiezi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改帖子:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>版块：</td><td><input name='bankuai' type='text' id='bankuai' value='<%= mmm.get("bankuai")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>标题：</td><td><input name='biaoti' type='text' id='biaoti' value='<%= mmm.get("biaoti")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>类型：</td><td><input name='leixing' type='text' id='leixing' value='<%= mmm.get("leixing")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>内容：</td><td><input name='neirong' type='text' id='neirong' value='<%= mmm.get("neirong")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>附件：</td><td><input name='fujian' type='text' id='fujian' size='50' value='<%= mmm.get("fujian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('fujian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>发布人：</td><td><input name='faburen' type='text' id='faburen' value='<%= mmm.get("faburen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


