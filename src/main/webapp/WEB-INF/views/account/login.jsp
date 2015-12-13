<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="staticPath" value="${pageContext.request.contextPath}/static"/>

<html>
<head>
	<title>登录页</title>
</head>

<%--<form>--%>
	<%--<div class="row">--%>
		<%--<div class="small-8">--%>
			<%--<div class="row">--%>
				<%--<div class="small-3 columns">--%>
					<%--<label for="right-label" class="right">Label</label>--%>
				<%--</div>--%>
				<%--<div class="small-9 columns">--%>
					<%--<input type="text" id="right-label" placeholder="Inline Text Input">--%>
				<%--</div>--%>
			<%--</div>--%>
		<%--</div>--%>
	<%--</div>--%>
<%--</form>--%>

<body>

<div class="row">
	<div class="large-6 small-12 medium-8 columns medium-centered small-centered large-centered radius auth-form">

	<form id="loginForm" action="${ctx}/login" method="post">

	<%
	String error = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
	if(error != null){
	%>
		<div class="small-12 small-centered medium-8 medium-centered large-10 large-centered columns">
			<span>用户名或密码错误.</span>
		</div>
	<%
	}
	%>
		<div class="auth-form-header">
			<div style="margin-left: 20px;margin-top: 10px">登录</div>
		</div>
		<div class="auth-form-body">
			<div class="large-8 small-12 small-centered medium-8 medium-centered large-centered columns" style="padding-top: 20px">
				<label for="right-label" class="left">用户名</label>
						<input type="text" id="right-label" name="username" class="radius" value="${username}">
			</div>
			<div class="large-8 small-12 small-centered medium-8 medium-centered large-centered columns">
				<label for="right-label" class="left">密码(忘记密码？)</label>
						<input type="password"  name="password" class="radius" value="${username}">
			</div>
			<%--<input type="hidden"  id="rememberMe" name="rememberMe" value="1">--%>
			<div class="large-8 small-12 small-centered medium-8 medium-centered large-centered columns">
				<input type="submit"  class="button tiny secondary radius" value="提交">
			</div>
		</div>
	</form>

</div>
</div>
<hr class="large-9 columns large-centered" style="padding-bottom: 40px"/>
</body>
</html>
