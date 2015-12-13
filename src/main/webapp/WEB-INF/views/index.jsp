
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="staticPath" value="${pageContext.request.contextPath}/static"/>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

  <title>GetAnyData.com</title>

</head>
<body>
      <section class="hero">
      <div class="row">
    <div class="large-6 columns about-box">
      <div class="black-box main-block-text">
        <h1 style="color:#fff">互相合作获得想要的数据！让更多的人和你对接！</h1>

        <br/>
        <p>全球化的数据社交网站，展示，交换、对接、管理，购买或无条件获得你想要的数据！

        <p>就在此刻！</p>
      </div>
    </div>
    <div class="large-6 columns about-box">
      <div class="black-box main-block-register">
        <form>
          <div class="row">
            <div class="large-8 columns large-centered">
              <input type="text" placeholder="昵称" class="radius">
              <input type="email" placeholder="邮箱" class="radius">
              <input type="password" placeholder="密码" class="radius">
              <a href="#" class="button expand radius">提         交</a>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

<section class="hero-content radius">
  <div class="row">
    <div class="large-8 columns about-content">
        <ul>
          <li class="panel li-gravatar">
            <a href="#"><img class="author-gravatar" src="${staticPath}/images/dog1.png" alt="" height="40" width="40"/></a>
            <a href="#">
              <b>酒店订单接口</b>
            </a>
            <span style="float: right">
              <i class="fi-star">266</i>
              &nbsp;
              <i class="fi-share">18</i>
            </span>
            <p style="font-size: 80%">
              各大品牌酒店，星级酒店订单接入接口
            </p>
          </li>
          <li class="panel li-gravatar">
            <a href="#"><img class="author-gravatar" src="${staticPath}/images/dog2.png" alt="" height="40" width="40"/></a>
            <a href="#">
              <b>微信开放平台</b>
            </a>
            <span style="float: right">
              <i class="fi-star">3390</i>
              &nbsp;
              <i class="fi-share">1882</i>
            </span>
            <p style="font-size: 80%">
              微信开放平台接口，提供微信登录，公众号等接口协议
            </p>
          </li>
          <li class="panel li-gravatar">
            <a href="#"><img class="author-gravatar" src="${staticPath}/images/dog3.png" alt="" height="40" width="40"/></a>
            <a href="#">
              <b>小米push协议</b>
            </a>
            <span style="float: right">
              <i class="fi-star">1298</i>
              &nbsp;
              <i class="fi-share">562</i>
            </span>
            <p style="font-size: 80%">
              小米公司提供的消息推送服务协议
            </p>
          </li>
          <li class="panel li-gravatar">
            <a href="#"><img class="author-gravatar" src="${staticPath}/images/dog4.png" alt="" height="40" width="40"/></a>
            <a href="#">
              <b>Google Adsence</b>
            </a>
            <span style="float: right">
              <i class="fi-star">6993</i>
              &nbsp;
              <i class="fi-share">5882</i>
            </span>
            <p style="font-size: 80%">
              The Api is the google team develop for the developer who want to make money.
            </p>
          </li>
          <li class="panel li-gravatar">
            <a href="#"><img class="author-gravatar" src="${staticPath}/images/dog1.png" alt="" height="40" width="40"/></a>
            <a href="#">
              <b>酒店订单接口</b>
            </a>
            <span style="float: right">
              <i class="fi-star">266</i>
              &nbsp;
              <i class="fi-share">18</i>
            </span>
            <p style="font-size: 80%">
              各大品牌酒店，星级酒店订单接入接口
            </p>
          </li>
          <li class="panel li-gravatar">
            <a href="#"><img class="author-gravatar" src="${staticPath}/images/dog2.png" alt="" height="40" width="40"/></a>
            <a href="#">
              <b>微信开放平台</b>
            </a>
            <span style="float: right">
              <i class="fi-star">3390</i>
              &nbsp;
              <i class="fi-share">1882</i>
            </span>
            <p style="font-size: 80%">
              微信开放平台接口，提供微信登录，公众号等接口协议
            </p>
          </li>
          <li class="panel li-gravatar">
            <a href="#"><img class="author-gravatar" src="${staticPath}/images/dog3.png" alt="" height="40" width="40"/></a>
            <a href="#">
              <b>小米push协议</b>
            </a>
            <span style="float: right">
              <i class="fi-star">1298</i>
              &nbsp;
              <i class="fi-share">562</i>
            </span>
            <p style="font-size: 80%">
              小米公司提供的消息推送服务协议
            </p>
          </li>
          <li class="panel li-gravatar">
            <a href="#"><img class="author-gravatar" src="${staticPath}/images/dog4.png" alt="" height="40" width="40"/></a>
            <a href="#">
              <b>Google Adsence</b>
            </a>
            <span style="float: right">
              <i class="fi-star">6993</i>
              &nbsp;
              <i class="fi-share">5882</i>
            </span>
            <p style="font-size: 80%">
              The Api is the google team develop for the developer who want to make money.
            </p>
          </li>
          <li class="panel li-gravatar">
            <a href="#"><img class="author-gravatar" src="${staticPath}/images/dog1.png" alt="" height="40" width="40"/></a>
            <a href="#">
              <b>酒店订单接口</b>
            </a>
            <span style="float: right">
              <i class="fi-star">266</i>
              &nbsp;
              <i class="fi-share">18</i>
            </span>
            <p style="font-size: 80%">
              各大品牌酒店，星级酒店订单接入接口
            </p>
          </li>
          <li class="panel li-gravatar">
            <a href="#"><img class="author-gravatar" src="${staticPath}/images/dog2.png" alt="" height="40" width="40"/></a>
            <a href="#">
              <b>微信开放平台</b>
            </a>
            <span style="float: right">
              <i class="fi-star">3390</i>
              &nbsp;
              <i class="fi-share">1882</i>
            </span>
            <p style="font-size: 80%">
              微信开放平台接口，提供微信登录，公众号等接口协议
            </p>
          </li>
          <li class="panel li-gravatar">
            <a href="#"><img class="author-gravatar" src="${staticPath}/images/dog3.png" alt="" height="40" width="40"/></a>
            <a href="#">
              <b>小米push协议</b>
            </a>
            <span style="float: right">
              <i class="fi-star">1298</i>
              &nbsp;
              <i class="fi-share">562</i>
            </span>
            <p style="font-size: 80%">
              小米公司提供的消息推送服务协议
            </p>
          </li>
          <li class="panel li-gravatar">
            <a href="#"><img class="author-gravatar" src="${staticPath}/images/dog4.png" alt="" height="40" width="40"/></a>
            <a href="#">
              <b>Google Adsence</b>
            </a>
            <span style="float: right">
              <i class="fi-star">6993</i>
              &nbsp;
              <i class="fi-share">5882</i>
            </span>
            <p style="font-size: 80%">
              The Api is the google team develop for the developer who want to make money.
            </p>
          </li>
        </ul>
    </div>
    <div class="large-4 columns" style="margin-top: 10px">
      <ul class="small-block-grid-2">
        <li><a href="#" ><img src="${staticPath}/images/index_star_images/juhe.jpg" alt="" height="180" width="180"/></a></li>
        <li><a href="#" ><img src="${staticPath}/images/index_star_images/taobao.jpg" height="180" width="180"/></a></li>
        <li><a href="#" ><img src="${staticPath}/images/index_star_images/tencent.jpg" height="180" width="180"/></a></li>
        <li><a href="#" ><img src="${staticPath}/images/index_star_images/baidu.jpg" height="180" width="180"/></a></li>
        <li><a href="#" ><img src="${staticPath}/images/index_star_images/juhe.jpg" alt="" height="180" width="180"/></a></li>
        <li><a href="#" ><img src="${staticPath}/images/index_star_images/taobao.jpg" height="180" width="180"/></a></li>
        <li><a href="#" ><img src="${staticPath}/images/index_star_images/tencent.jpg" height="180" width="180"/></a></li>
        <li><a href="#" ><img src="${staticPath}/images/index_star_images/baidu.jpg" height="180" width="180"/></a></li>
        <li><a href="#" ><img src="${staticPath}/images/index_star_images/juhe.jpg" alt="" height="180" width="180"/></a></li>
        <li><a href="#" ><img src="${staticPath}/images/index_star_images/taobao.jpg" height="180" width="180"/></a></li>

      </ul>
    </div>
  </div>
</section>

<div class="row">
  <div class="large-12 columns">
    <div class="panel">
      <div class="row">
        <div class="large-9 columns">
          <h4>让我们一起！</h4>

          <%--<p>提供优质的数据或接口，用以获取金钱、利益、声望，GetAnyData无偿为您推广.</p>--%>
          <p>贡献分红计划，GetAnyData.com 将会计算总的贡献和声望,根据会员所占比例来分配所有的资源（分红，数据，期权等等），只要有贡献，都将得到分红!</p>
        </div>
        <div class="large-3 columns">
          <a href="#" class="radius button right">贡献</a>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
