<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 
 popheight = 39;
 </script>
 <div class="header-fixed">
        <div class="logo-header">
          <div class="container">
            <div class="logo-container pull-left clearfix">
              <div class="logo">
               <h1 class="site-title"> <a href="index.jsp"> <img src="qtimages/small-logo.png">&nbsp;高中家校互联系统 </a> </h1>
               
              </div>
            </div>
            <div class="menu-container pull-right">
              <div class="site-menu">
                <div class="site-menu-inner clearfix">
                  <div class="site-menu-container pull-left">
                    <nav class="hidden-xs hidden-sm">
                      <ul class="sf-menu clearfix list-unstyled">
                  <%@ include file="banner.jsp"%>
                </ul>
                    </nav>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
	  
	   <div class="logo-header">
        <div class="container">
          <div class="logo-container clearfix">
            <div class="logo pull-left">
              <h1 class="site-title"> <a href="index.jsp"> <img src="qtimages/logo.png" alt="高中家校互联系统">&nbsp;&nbsp;高中家校互联系统 </a> </h1>
              
			  
            </div>
            <div class="social-info pull-right hidden-xs hidden-sm">
              <ul class="social textcolor list-unstyled">
                <li class="phone"><a href="#"><i class="fa fa-phone"></i><span>023-xxxxx xxxxx</span></a></li>
                <li class="mail active"><a href="#"><i class="fa fa-envelope"></i><span>xxxx@xxxx.com</span></a></li>
              </ul>
            </div>
            <ul class="member">
			
				<%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
			 <form action="jspmgzjxhlxthsg4194ABA2?ac=login&amp;a=a" name="f11" id="f11" style="display: inline">
              <li>
                <input type="text" name="username" id="username" placeholder="用户名">
              </li>
              <li>
                <input type="text" name="pwd1" id="pwd1" placeholder="密码">
              </li>
			  <li>
                <select name="cx" id="cx" style="width:100px; height:22px; color:#888888;  background-color:#8cb88b; ">
			                  <option value="教师">教师</option>
		                      <option value="家长">家长</option>
			    </select>&nbsp;
              </li>
			  <li>
                <input type="text" name="pagerandom" id="pagerandom" placeholder="验证码">
              </li>
			   <li>
              <a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" /></a>&nbsp;
              </li>
              <li>
                <input type="submit" name="submit" id="submit" value="登陆" class="login" onclick="return checklog();">
              </li>
              <li></li>
		      </form>
			   <script type="text/javascript">
          
           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="" || document.f11.pagerandom.value=="")
	{
		alert("请输入完整");
		return false;
	}
}
           
                                  </script>
			     <%}else{ %>
				  <li>
                 用户名:<%=request.getSession().getAttribute("username")%>;&nbsp;
              </li>
              <li>
                权限:<%=request.getSession().getAttribute("cx")%>;&nbsp;
              </li>
			  <li>
                欢迎您的到来!&nbsp;
              </li>
			 
              <li>
                <input type="button" name="submit" id="submit" value="退出" class="login" onclick="javascript:location.href='logout.jsp';" style="cursor:pointer">
              </li>
              <li>
                <input type="submit" name="submit" id="submit" value="个人中心" class="sign2" onclick="javascript:location.href='main.jsp';" style="cursor:pointer">
              </li>
				  <%} %>
            </ul>
          </div>
        </div>
      </div>
      <div class="site-menu">
        <div class="container">
          <div class="site-menu-inner clearfix">
            <div class="site-menu-container pull-left">
              <nav class="hidden-xs hidden-sm">
                <ul class="sf-menu clearfix list-unstyled">
                  
				  <%@ include file="banner.jsp"%>
                </ul>
              </nav>
            </div>
            <div class="header-search-form pull-right hidden-xs hidden-sm">
              <div class="header-search">
                <form role="search" class="search-form" action="news.php">
                  <div class="header-search-input-wrap">
                    <input class="header-search-input" placeholder="请输入您要搜索的关键证……" type="text" value="" name="biaoti"/>
                  </div>
                  <input class="header-search-submit" type="submit" value="">
                  <span class="header-icon-search"><i class="fa fa-search"></i></span>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
	  

