<%@ page import="org.apache.shiro.SecurityUtils" %>
<%@ page import="org.apache.shiro.subject.Subject" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="staticPath" value="${pageContext.request.contextPath}/static"/>



<header>
	<div class="main-wrapper">
		<nav class="top-bar" data-topbar="" role="navigation">
			<!-- Title -->
			<ul class="title-area large-push-1">
				<li class="name"><h1><a href="#" id="title">GetAnyData.com</a></h1></li>
				<!-- Mobile Menu Toggle -->
				<li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
			</ul>
			<!-- Top Bar Section -->
			<section class="top-bar-section">
				<!-- Top Bar Left Nav Elements -->
				<ul class="left large-push-1">


					<!-- Divider -->
					<li class="divider"></li>
					<!-- Dropdown -->

					<!-- Search | has-form wrapper -->
					<li class="has-form">
						<form action="${ctx}/search">
							<input type="text" placeholder="Get..." name="q" class="radius" size="30">
						</form>
					</li>
					<li><a href="">发现</a></li>
					<li><a href="">圈子</a></li>
					<%--<li><a href="">问答</a></li>--%>
					<li><a href="">标签</a></li>

				</ul>
				<!-- Top Bar Right Nav Elements -->
				<ul class="right large-pull-1">
					<shiro:notAuthenticated>
						<li class="divider"></li>
						<li><a href="${ctx}/login">登录</a></li>
					</shiro:notAuthenticated>

					<shiro:user>
						<li class="divider"></li>

						<li class="has-dropdown not-click"><a href="#"><img src="${staticPath}/images/dog1.png" alt="" height="20" width="20" style="border-radius: 2px"/></a>
							<!-- Nested Dropdown -->
							<ul class="dropdown"><li class="title back js-generated"><h5><a href="javascript:void(0)">返回</a></h5></li>
								<li><a href="${ctx}/<shiro:principal property="selfPathName"/> ">个人资料</a></li>
								<li><a href="#">MY Data</a></li>
								<li class="divider"></li>
								<li><a href="#">设置</a></li>
								<li><a href="${ctx}/logout">退出</a></li>
							</ul>
						</li>
						<li class="divider"></li>
						<li><a href="#"><i class="fi-mail"></i>&nbsp;</a></li>
						<li class="divider"></li>

						<li class="has-form has-dropdown not-click" id="create-btn">
							<a class="button" title="创建"><i class="fi-plus"></i></a>
							<ul class="dropdown"><li class="title back js-generated"><h5><a href="javascript:void(0)">返回</a></h5></li>
								<%--提供API接口文档--%>
								<li><a href="${ctx}/new">创建项目</a></li>
								<%--提供数据文档或网页文章，连接，等等--%>
								<%--<li><a href="#">提供数据</a></li>--%>
								<%--创建一个需求说明，等人响应--%>
								<%--<li><a href="#">创建需求</a></li>--%>
								<li class="divider"></li>
								<li><a href="${ctx}/create">创建组织</a></li>
								<li><a href="${ctx}/union">发起联盟</a></li>
								<%--主题没有领导者，一个人创建了，另外一个人如果是相同的名字直接进即可--%>
							</ul>
						</li>
					</shiro:user>
				</ul>
			</section></nav>
	</div>
</header>
