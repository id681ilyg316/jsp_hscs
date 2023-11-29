
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <li  > <a href="index.jsp">首页</a> </li>
					    <li><a href="dx_detail.jsp?lb=通知公告">通知公告</a></li>
						<li> <a href="jiachangxinxiadd.jsp">家长注册</a></li>
						<c:if test="${ role eq 1 }">
						<li> <a href="qingjiashenqingadd.jsp">请假申请</a></li>
						</c:if>
						
						<li> <a href="kechengbiaolist.jsp">课程表</a></li>
						<c:if test="${ role eq 0 }">
						<li> <a href="bbs.jsp">教师论坛</a></li>
						</c:if>
						<li> <a style="cursor:pointer">家长论坛 </a>
                          <ul>
                            <li><a href="lyb.jsp">在线留言</a></li>
                            <li><a href="lyblist.jsp">查看留言</a></li>
                          </ul>
                        </li>
						<li><a href="login.jsp">后台管理</a></li>