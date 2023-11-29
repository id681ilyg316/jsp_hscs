<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>班级信息</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="banjixinxi_add.jsp?id=<%=id%>";
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







new CommDAO().insert(request,response,"banjixinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="banjixinxi_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  添加班级信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">班级：</td><td><input name='banji' type='text' id='banji' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelbanji' /></td></tr>
		
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
 
	var banjiobj = document.getElementById("banji"); if(banjiobj.value==""){document.getElementById("clabelbanji").innerHTML="&nbsp;&nbsp;<font color=red>请输入班级</font>";return false;}else{document.getElementById("clabelbanji").innerHTML="  "; } 
	var banjiobj = document.getElementById("banji");  
if(banjiobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=banjixinxi&col=banji&value="+banjiobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelbanji").innerHTML="&nbsp;&nbsp;<font color=red>班级已存在</font>";  
return false;
}else{document.getElementById("clabelbanji").innerHTML="  ";  
}  
} 
	


return true;   
}   
popheight=450;
</script>  


