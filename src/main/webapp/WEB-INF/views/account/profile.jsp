<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="staticPath" value="${pageContext.request.contextPath}/static"/>

<html>
<head>
	<title>${selfPathName} - GetAnyData</title>
</head>

<body>
<div style="height: 30px"></div>

	<div class="row">
		<div class="large-3 small-12 medium-3 columns">
			<p>
			<div class="hidden-for-small-only">
				<a href="" data-reveal-id="mapModal"><img src="${staticPath}/images/gad_profile/6338820.jpeg" title="Harden Zhang"></a><br/>
			</div>
			<h4 data-reveal-id="mapModal">${user.name}</h4>
			<h6 data-reveal-id="mapModal" class="grayFont">${user.selfPathName}</h6>
			<span class="label label-success radius">已关注</span>


			<p>
				<i class="fi-mail"></i><a href="javascript:alert('发送消息给他')">&nbsp;&nbsp;zdp118@gmail.com</a><br/>
				<i class="fi-telephone"></i><a href="javascript:alert('打电话给他')">&nbsp;&nbsp;020-8661882</a><br/>
				<i class="fi-web"></i><a href="javascript:alert('打电话给他')">&nbsp;&nbsp;www.juhe.cn</a><br/>
				<i class="fi-clock"></i><span style="color: #727272;font-size: 70%">&nbsp;&nbsp;50分钟前在线</span>
			</p>


			<%--<a href="" data-reveal-id="mapModal">刷新Map</a>--%>
			</p>
			<hr class="large-10 small-12 medium-10 columns large-centered small-centered medium-centered" style="padding-bottom: 20px"/>
			<div class="row" style="font-weight: bold">

				<div class="large-4 small-4 medium-4 columns">
					<h5><a href="">59</a></h5> <p style="font-size: 70%">粉丝</p>
				</div>

				<div class="large-4 small-4 medium-4 columns">
					<h5><a href="">8971</a></h5> <p style="font-size: 70%">声望</p>
				</div>
				<div class="large-4 small-4 medium-4 columns">
					<h5><a href="">59</a></h5> <p style="font-size: 70%">数据贡献</p>
				</div>
			</div>
			<%--<hr class="large-10 psmall-12 medium-10 columns large-centered small-centered medium-centered" style="padding-bottom: 20px"/>--%>
			<%--<div class="row" style="font-weight: bold">--%>
				<%--<div class="large-12 large-centered columns">--%>
				<%--<p>轨迹</p>--%>
					<%--<div class="large-3 small-6 medium-6 columns">--%>
						<%--<a href="">5</a> <p style="font-size: 70%">达成协议</p>--%>
					<%--</div>--%>
					<%--<div class="large-3 small-6 medium-6 columns">--%>
						<%--<a href="">23</a> <p style="font-size: 70%">协议中</p>--%>
					<%--</div>--%>
					<%--<div class="large-3 small-6 medium-6 columns">--%>
						<%--<a href="">1200</a> <p style="font-size: 70%">期待合作</p>--%>
					<%--</div>--%>
					<%--<div class="large-3 small-6 medium-6 columns">--%>
						<%--<a href="">88%</a> <p style="font-size: 70%">信誉</p>--%>
					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>
		</div>



		<div class="large-9 small-12 medium-9 columns profile-tabs">
			<div class="tabnav">
				<ul class="tabs mainTab" data-tab role="tablist">
					<li class="tabnav-tab active" role="presentational">
							<a href="#gongxian" role="tab" tabindex="0" aria-selected="true" controls="gongxian">
								<i class="fi-database"></i>  MY Data
							</a>
					</li>
					<li class="tabnav-tab"  role="presentational">
						<a href="#quanzi" role="tab" tabindex="0" aria-selected="false" controls="quanzi">
							<i class="fi-annotate"></i>  圈 子
						</a>
					</li>
					<%--<li class="tabnav-tab" role="presentational">--%>
						<%--<a href="#xuqiu" role="tab" tabindex="0" aria-selected="false" controls="xuqiu">--%>
							<%--<i class="fi-results"></i>  问 答--%>
						<%--</a>--%>
					<%--</li>--%>
				</ul>
			</div>
			<div class="tabs-content">
				<section role="tabpanel" aria-hidden="false" class="content active" id="gongxian">
						<div class="row">
							<div class="large-12 columns">
								<c:if test="${fn:length(createUserProjectPage) > 0}">
									<ul class="pricing-table">
										<li class="title">项目</li>
										<c:forEach var="myproject" items="${createUserProjectPage}">
											<li class="bullet-item panel">
												<a href="${ctx}/${user.selfPathName}/${myproject.name}">
													<b>${myproject.name}</b>
												</a>
												<span style="float: right">
												  <i class="fi-star">266</i>
												  &nbsp;
												  <i class="fi-share">18</i>
												</span>
												<p style="font-size: 80%">
														${myproject.simpleInfo}
												</p>
											</li>
										</c:forEach>
									</ul>
								</c:if>
							</div>
							<div class="large-12 columns">
								<c:if test="${fn:length(projects) > 0}">
									<ul class="pricing-table">
										<li class="title">贡献的项目</li>
										<c:forEach var="project" items="${projects}">
										<li class="bullet-item panel">
											<a href="${ctx}/${user.selfPathName}/${project.name}">
												<b>${project.name}</b>
											</a>
												<span style="float: right">
												  <i class="fi-star">266</i>
												  &nbsp;
												  <i class="fi-share">18</i>
												</span>
											<p style="font-size: 80%">
													${project.simpleInfo}
											</p>
										</li>
										</c:forEach>
									</ul>
								</c:if>
							</div>



						</div>
					<%--<div class="row">--%>
						<%--<div class="large-6 columns">--%>
							<%--<ul class="pricing-table">--%>
								<%--<li class="title">代码共享</li>--%>
								<%--<li class="bullet-item panel">--%>
									<%--<a href="#">--%>
										<%--<b>协同过滤算法实现</b>--%>
									<%--</a>--%>
											<%--<span style="float: right">--%>
											  <%--<i class="fi-star">3390</i>--%>
											  <%--&nbsp;--%>
											  <%--<i class="fi-share">1882</i>--%>
											<%--</span>--%>
									<%--<p style="font-size: 80%">--%>
										<%--微信开放平台接口，提供微信登录，公众号等接口协议阿斯达大师的撒大苏打撒旦撒打扫打扫打扫打扫打扫的撒打算三大大苏打撒旦撒旦撒旦--%>
									<%--</p>--%>
								<%--</li>--%>
							<%--</ul>--%>
						<%--</div>--%>
						<%--<div class="large-6 columns">--%>
							<%--<ul class="pricing-table">--%>
								<%--<li class="title">开放平台</li>--%>
								<%--<li class="bullet-item panel">--%>
									<%--<a href="#">--%>
										<%--<b>微信开放平台微信开放平台微信开放平台微信开放平台微信开放平台微信开放平台微信开放平台微信开放平台微信开放平台微信开放平台</b>--%>
									<%--</a>--%>
											<%--<span style="float: right">--%>
											  <%--<i class="fi-star">3390</i>--%>
											  <%--&nbsp;--%>
											  <%--<i class="fi-share">1882</i>--%>
											<%--</span>--%>
									<%--<p style="font-size: 80%">--%>
										<%--微信开放平台接口，提供微信登录，公众号等接口协议阿斯达大师的撒大苏打撒旦撒打扫打扫打扫打扫打扫的撒打算三大大苏打撒旦撒旦撒旦--%>
									<%--</p>--%>
								<%--</li>--%>
							<%--</ul>--%>
						<%--</div>--%>
					<%--</div>--%>
				</section>
				<section role="tabpanel" aria-hidden="true" class="content" id="quanzi">
					<%--圈子--%>
					<div class="row">
						<div class="large-9 columns">
							<div class="row quanzi-stream">
								<div class="large-10 columns">
									<div class="middleFont"><strong><a href="#"><img src="http://placehold.it/40x40&text=[img]"/>百度指数</a>:</strong> 发布了最新文章：<a
											href="">百度大数据预测开放平台</a></div>
									<ul class="inline-list right">
										<li><a href="" class="smallFont">回复</a></li>
										<li><a href="" class="smallFont">分享</a></li>
										<li><a class="smallFont">3 评论</a></li>
										<li><small class="smallFont">2天前</small></li>
									</ul>
									<div class="row">
										<div class="large-10 column right"><p class="smallFont"><img src="http://placehold.it/20x20&text=[ad]"/><strong><a href="">张三</a>：</strong>我擦这个屌</p></div>
									</div>
									<div class="row">
										<div class="large-10 column right"><p class="smallFont"><img src="http://placehold.it/20x20&text=[ad]"/><strong><a href="">李四</a>：</strong>可以用来预测股票么？</p></div>
									</div>
									<div class="row">
										<div class="large-10 column right"><p class="smallFont"><img src="http://placehold.it/20x20&text=[ad]"/><strong><a href="">王老五</a><span>&nbsp;回复</span>
											<a href="">李四</a>：</strong>预测个几吧。。。</p></div>
									</div>
								</div>
							</div>
							<div class="row quanzi-stream">
								<div class="large-10 columns">
									<div class="middleFont">
										<strong><a href="#"><img src="http://placehold.it/40x40&text=[img]"/>小米</a>:</strong>
										更新了：<a href="">小米push服务</a>
									</div>
									<ul class="inline-list right">
										<li><a href="" class="smallFont">回复</a></li>
										<li><a href="" class="smallFont">分享</a></li>
										<li><a class="smallFont">0 评论</a></li>
										<li><small class="smallFont">15-6-23 15:23</small></li>
									<%--评论：from   ； To  ；类容  ； 时间 ； 关联的消息--%>
									</ul>
								</div>
							</div>
							<div class="row quanzi-stream">
								<div class="large-10 columns">
									<div class="middleFont"><strong><a href="#"><img src="http://placehold.it/40x40&text=[img]"/>百度指数</a>:</strong> 发布了最新文章：<a
											href="">百度大数据预测开放平台</a></div>
									<ul class="inline-list right">
										<li><a href="" class="smallFont">回复</a></li>
										<li><a href="" class="smallFont">分享</a></li>
										<li><a class="smallFont">1 评论</a></li>
										<li><small class="smallFont">15-6-22 08:55</small></li>
									</ul>
									<div class="row">
										<div class="large-10 column right"><p class="smallFont"><img src="http://placehold.it/20x20&text=[ad]"/><strong><a href="">张三</a>：</strong>我擦这个屌</p></div>
									</div>
								</div>
							</div>
						</div>
						<aside class="large-3 columns hide-for-small">
							<p><img src="http://placehold.it/300x440&text=[ad]"/></p>
							<p><img src="http://placehold.it/300x440&text=[ad]"/></p>
						</aside>
					</div>
				</section>
				<%--<section role="tabpanel" aria-hidden="true" class="content" id="xuqiu">--%>
					<%--&lt;%&ndash;todo 需求合作，是根据标签进行筛选需求，有点类似stackoverflow的问题标签筛选，--%>
					<%--看到有意向的就点进去看详情，并给该需求up一下，up分越高，则越受到重视，--%>
					<%--反之则  down ，down了的需求将会在【下一个一段时间内】被排在末尾&ndash;%&gt;--%>


					<%--<div class="row">--%>
						<%--<dl class="sub-nav">--%>
							<%--<dd class="active"><a href="#">关于我的</a></dd>--%>
							<%--<dd><a href="#">最新</a></dd>--%>
							<%--<dd><a href="#">热门</a></dd>--%>
							<%--<dd><a href="#">推荐</a></dd>--%>
						<%--</dl>--%>
						<%--<div class="large-12 columns">--%>
							<%--<section class="xuqiu-list">--%>
								<%--<div class="qa-rank">--%>
									<%--<div class="votes hidden-xs">--%>
										<%--0<p><small>投票</small></p>--%>
									<%--</div>--%>
									<%--<div class="answers">--%>
										<%--0<p><small>回答</small></p>--%>
									<%--</div>--%>
									<%--<div class="views hidden-xs">--%>
										<%--8<p><small>浏览</small></p>--%>
									<%--</div>--%>
								<%--</div>--%>
								<%--<div class="summary">--%>
									<%--<ul class="author list-inline">--%>
										<%--<li>--%>
											<%--<a href="/u/wz0107">&nbsp;&nbsp;<small class="grayFont">wz0107</small></a>--%>
											<%--·--%>
											<%--<small>4 分钟前提问</small>--%>
										<%--</li>--%>
									<%--</ul>--%>
									<%--<h2 class="title"><a href="/q/1010000002961829">那2px是哪里来的阿斯顿的阿斯达说的对阿斯达大师的萨达洒洒的啊苏打撒旦撒旦撒旦撒旦撒旦啊是大苏打撒旦撒旦洒洒的 </a></h2>--%>
									<%--<ul class="taglist--inline ib">--%>
										<%--<li class="tagPopup"><a class="tag tag-sm" href="/t/css" data-toggle="popover" data-original-title="css" data-id="1040000000089434">css</a></li>            </ul>--%>
								<%--</div>--%>
							<%--</section>--%>
						<%--</div>--%>
						<%--<div class="large-12 columns">--%>
							<%--<section class="xuqiu-list">--%>
								<%--<div class="qa-rank">--%>
									<%--<div class="votes hidden-xs">--%>
										<%--12<p><small>投票</small></p>--%>
									<%--</div>--%>
									<%--<div class="answers">--%>
										<%--1<p><small>回答</small></p>--%>
									<%--</div>--%>
									<%--<div class="views hidden-xs">--%>
										<%--120<p><small>浏览</small></p>--%>
									<%--</div>--%>
								<%--</div>--%>
								<%--<div class="summary">--%>
									<%--<ul class="author list-inline">--%>
										<%--<li>--%>
											<%--<a href="/u/wz0107">&nbsp;&nbsp;<small class="grayFont">wz0107</small></a>--%>
											<%--·--%>
											<%--<small>3天前提问</small>--%>
										<%--</li>--%>
									<%--</ul>--%>
									<%--<h2 class="title"><a href="/q/1010000002961829">x是哪里来的阿斯顿的阿的asdsadsad </a></h2>--%>
									<%--<ul class="taglist--inline ib">--%>
										<%--<li class="tagPopup">--%>
											<%--<a class="tag tag-sm" href="/t/css">政府</a>--%>
										<%--</li>--%>
										<%--<li class="tagPopup">--%>
											<%--<a class="tag tag-sm" href="/t/css">医疗</a>--%>
										<%--</li>--%>
										<%--<li class="tagPopup">--%>
											<%--<a class="tag tag-sm" href="/t/css">汽车</a>--%>
										<%--</li>--%>
									<%--</ul>--%>
								<%--</div>--%>
							<%--</section>--%>
						<%--</div>--%>
						<%--<div class="large-12 columns">--%>
							<%--<section class="xuqiu-list">--%>
								<%--<div class="qa-rank">--%>
									<%--<div class="votes hidden-xs">--%>
										<%--0<p><small>投票</small></p>--%>
									<%--</div>--%>
									<%--<div class="answers">--%>
										<%--0<p><small>回答</small></p>--%>
									<%--</div>--%>
									<%--<div class="views hidden-xs">--%>
										<%--8<p><small>浏览</small></p>--%>
									<%--</div>--%>
								<%--</div>--%>
								<%--<div class="summary">--%>
									<%--<ul class="author list-inline">--%>
										<%--<li>--%>
											<%--<a href="/u/wz0107">&nbsp;&nbsp;<small class="grayFont">wz0107</small></a>--%>
											<%--·--%>
											<%--<small>4 分钟前提问</small>--%>
										<%--</li>--%>
									<%--</ul>--%>
									<%--<h2 class="title"><a href="/q/1010000002961829">那2px是哪里来的阿斯顿的阿斯达说的对阿斯达大师的萨达洒洒的啊苏打撒旦撒旦撒旦撒旦撒旦啊是大苏打撒旦撒旦洒洒的 </a></h2>--%>
									<%--<ul class="taglist--inline ib">--%>
										<%--<li class="tagPopup"><a class="tag tag-sm" href="/t/css" data-toggle="popover" data-original-title="css" data-id="1040000000089434">css</a></li>            </ul>--%>
								<%--</div>--%>
							<%--</section>--%>
						<%--</div>--%>
					<%--</div>--%>
				<%--</section>--%>
			</div>
		</div>
		</div>
<hr class="large-10 small-12 medium-10 columns large-centered small-centered medium-centered" style="margin-top: 50px;padding-bottom: 20px"/>
</body>
</html>
