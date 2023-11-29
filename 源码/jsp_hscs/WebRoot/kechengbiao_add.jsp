<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>课程表</title>
	
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
	document.location.href="kechengbiao_add.jsp?id=<%=id%>";
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







new CommDAO().insert(request,response,"kechengbiao",ext,true,false,""); 

}

%>

  <body >
 <form  action="kechengbiao_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  添加课程表:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		
		<tr>
		  <td width="200">周一：</td><td><input name='kechengming' type='text' id='kechengming' value='' onblur='checkform()' size='50' style='border:solid 1px #000000; color:#666666' readonly='readonly' />&nbsp;* <span id='clabelkechengming' ></span> <br><% for(HashMap map:new CommDAO().select("select kechengmingcheng from kechengxinxi  order by id desc")){%><a onClick="hsgxia2shxurxu('<%=map.get("kechengmingcheng")%>','kechengming')" style="cursor:pointer"><%=map.get("kechengmingcheng")%></a>；<%}%></td></tr>
		
		<tr>
		  <td>周二：</td><td><input name='kechengmingyi' type='text' id='kechengmingyi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' readonly='readonly' /><br><% for(HashMap map:new CommDAO().select("select kechengmingcheng from kechengxinxi  order by id desc")){%><a onClick="hsgxia2shxurxu('<%=map.get("kechengmingcheng")%>','kechengmingyi')" style="cursor:pointer"><%=map.get("kechengmingcheng")%></a>；<%}%></td></tr>
		
		<tr>
		  <td>周三：</td><td><input name='kechengminger' type='text' id='kechengminger' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' readonly='readonly' /><br><% for(HashMap map:new CommDAO().select("select kechengmingcheng from kechengxinxi  order by id desc")){%><a onClick="hsgxia2shxurxu('<%=map.get("kechengmingcheng")%>','kechengminger')" style="cursor:pointer"><%=map.get("kechengmingcheng")%></a>；<%}%></td></tr>
		
		<tr>
		  <td>周四：</td><td><input name='kechengmingsan' type='text' id='kechengmingsan' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' readonly='readonly' /><br><% for(HashMap map:new CommDAO().select("select kechengmingcheng from kechengxinxi  order by id desc")){%><a onClick="hsgxia2shxurxu('<%=map.get("kechengmingcheng")%>','kechengmingsan')" style="cursor:pointer"><%=map.get("kechengmingcheng")%></a>；<%}%></td></tr>
		
		<tr>
		  <td>周五：</td><td><input name='kechengmingsi' type='text' id='kechengmingsi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' readonly='readonly' /><br><% for(HashMap map:new CommDAO().select("select kechengmingcheng from kechengxinxi  order by id desc")){%><a onClick="hsgxia2shxurxu('<%=map.get("kechengmingcheng")%>','kechengmingsi')" style="cursor:pointer"><%=map.get("kechengmingcheng")%></a>；<%}%></td></tr>
		
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
 
	var zhouyiobj = document.getElementById("zhouyi"); if(zhouyiobj.value==""){document.getElementById("clabelzhouyi").innerHTML="&nbsp;&nbsp;<font color=red>请输入周一</font>";return false;}else{document.getElementById("clabelzhouyi").innerHTML="  "; } 
	var kechengmingobj = document.getElementById("kechengming"); if(kechengmingobj.value==""){document.getElementById("clabelkechengming").innerHTML="&nbsp;&nbsp;<font color=red>请输入课程名</font>";return false;}else{document.getElementById("clabelkechengming").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


