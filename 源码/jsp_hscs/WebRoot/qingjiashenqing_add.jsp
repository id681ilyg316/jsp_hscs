<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>请假申请</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 

 HashMap mssdq = new CommDAO().getmaps("jiachangzhanghao",(String)request.getSession().getAttribute("username"),"jiachangxinxi");
 String jiachangzhanghao="";  	String jiachangxingming="";  	String xueshengxuehao="";  	String xueshengxingming="";  	String banji="";  	String jiaoshihao="";  	
 jiachangzhanghao=(String)mssdq.get("jiachangzhanghao");  	jiachangxingming=(String)mssdq.get("jiachangxingming");  	xueshengxuehao=(String)mssdq.get("xueshengxuehao");  	xueshengxingming=(String)mssdq.get("xueshengxingming");  	banji=(String)mssdq.get("banji");  	jiaoshihao=(String)mssdq.get("jiaoshihao");  	
   %>
<script language="javascript">

function gow()
{
	document.location.href="qingjiashenqing_add.jsp?id=<%=id%>";
}
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

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){



ext.put("issh","待审核");



new CommDAO().insert(request,response,"qingjiashenqing",ext,true,false,""); 

}

%>

  <body >
 <form  action="qingjiashenqing_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加请假申请:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">请假单号：</td><td><input name='qingjiadanhao' type='text' id='qingjiadanhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">家长账号：</td><td><input name='jiachangzhanghao' type='text' id='jiachangzhanghao' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr><script language="javascript">document.form1.jiachangzhanghao.value='<%=jiachangzhanghao%>';document.form1.jiachangzhanghao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">家长姓名：</td><td><input name='jiachangxingming' type='text' id='jiachangxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.jiachangxingming.value='<%=jiachangxingming%>';document.form1.jiachangxingming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">学生学号：</td><td><input name='xueshengxuehao' type='text' id='xueshengxuehao' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.xueshengxuehao.value='<%=xueshengxuehao%>';document.form1.xueshengxuehao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">学生姓名：</td><td><input name='xueshengxingming' type='text' id='xueshengxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.xueshengxingming.value='<%=xueshengxingming%>';document.form1.xueshengxingming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">班级：</td><td><input name='banji' type='text' id='banji' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.banji.value='<%=banji%>';document.form1.banji.setAttribute("readOnly",'true');</script>		<tr><td  width="200">教师号：</td><td><input name='jiaoshihao' type='text' id='jiaoshihao' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.jiaoshihao.value='<%=jiaoshihao%>';document.form1.jiaoshihao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">请假原因：</td><td><textarea name='qingjiayuanyin' cols='50' rows='5' id='qingjiayuanyin' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	


return true;   
}   
popheight=450;
</script>  


