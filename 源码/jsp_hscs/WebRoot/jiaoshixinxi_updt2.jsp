<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>教师信息</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

  <body >
<% 

String id = request.getParameter("id"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"jiaoshixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmaps("jiaoshihao",(String)request.getSession().getAttribute("username"),"jiaoshixinxi"); 
%>
  <form  action="jiaoshixinxi_updt2.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改教师信息:
  <br><br>
  <%
  
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>教师号：</td><td><input name='jiaoshihao' type='text' id='jiaoshihao' value='<%= mmm.get("jiaoshihao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>密码：</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>教师姓名：</td><td><input name='jiaoshixingming' type='text' id='jiaoshixingming' value='<%= mmm.get("jiaoshixingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>性别：</td><td><select name='xingbie' id='xingbie'><option value="男">男</option><option value="女">女</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=mmm.get("xingbie")%>';</script>
     <tr><td>级别：</td><td><select name='jibie' id='jibie'><option value="特级教师">特级教师</option><option value="高级教师">高级教师</option><option value="普通教师">普通教师</option></select></td></tr><script language="javascript">document.form1.jibie.value='<%=mmm.get("jibie")%>';</script>
     <tr><td>手机：</td><td><input name='shouji' type='text' id='shouji' value='<%= mmm.get("shouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>邮箱：</td><td><input name='youxiang' type='text' id='youxiang' value='<%= mmm.get("youxiang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>照片：</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='<%= mmm.get("zhaopian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>教师简介：</td><td><textarea name='jiaoshijianjie' cols='50' rows='5' id='jiaoshijianjie' style='border:solid 1px #000000; color:#666666'><%=mmm.get("jiaoshijianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


