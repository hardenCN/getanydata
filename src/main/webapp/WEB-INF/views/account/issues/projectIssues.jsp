<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="staticPath" value="${pageContext.request.contextPath}/static"/>

<html>
<head>
    <title>issues - ${contributionName} - ${username} - GetAnyData</title>
</head>
<body>

<div class="header">
  <div class="row">
    <div class="large-8 small-12 medium-8 columns">
      <div class="left">
        <h3>
          <img src="${staticPath}/images/icon/http_icon.png" width="40" height="40" alt=""/>
          <a href="http://foundation.zurb.com/forum" title="Foundation Forum">
            <b>鹰漠旅行</b>
          </a>
          /
          <a href="http://foundation.zurb.com/forum" title="Foundation Forum">
            <b>鹰漠旅行酒店接口</b>
          </a>
          <span data-tooltip aria-haspopup="true" class="has-tip" title="含收费项目."><i class="fi-yen"></i></span>
          <span data-tooltip aria-haspopup="true" class="has-tip" title="私有项目."><i class="fi-lock"></i></span>
          <a class="tag-container" href="http://dev.innmall.cn/api">酒店</a>
          <a class="tag-container" href="http://dev.innmall.cn/api">O2O</a>
        </h3>
      </div>
    </div>
    <div class="large-4 small-12 medium-4 columns">
      <%--这里要用token防止重复提交--%>
      <div class="right">
        <a class="tag-container-tongji" href=""><i class="fi-star"></i> star <span
                class="star-share-num">88890</span></a>
        <a class="tag-container-tongji" href=""><i class="fi-share"></i> share <span class="star-share-num">88110</span></a>

      </div>
    </div>

  </div>
</div>

<div class="row">
  <div class="large-11 columns">

      <div class="issues-listing" data-pjax="">


        <div class="table-list-header" id="js-issues-toolbar">

          <div class="table-list-filters">

            <div class="table-list-header-toggle states left">
              <a href="/springside/springside4/issues?q=is%3Aopen+is%3Aissue" class="btn-link selected">
                <span class="fi-info"></span>
                84 Open
              </a>

              <a href="/springside/springside4/issues?q=is%3Aissue+is%3Aclosed" class="btn-link ">
                <span class="fi-check"></span>
                304 Closed
              </a>
            </div>
          </div>

        </div>


        <ul class="table-list table-list-bordered table-list-issues js-navigation-container js-active-navigation-container">


          <li id="issue_439" class=" read table-list-item js-navigation-item js-issue-row">


            <div class="table-list-cell table-list-cell-type">
              <a href="/springside/springside4/issues?q=is%3Aissue+is%3Aopen" aria-label="View all issues" class="tooltipped tooltipped-n">
                <span class="fi-info open"></span>
              </a>  </div>

            <div class="table-list-cell issue-title">


              <a href="/springside/springside4/issues/439" class="issue-title-link js-navigation-open">
                modules 中的几个install.bat都下载不了对应的包
              </a>
              <span class="labels">
            <a href="/springside/springside4/issues?q=is%3Aopen+label%3A%22New+Feature%22" aria-label="View all New Feature issues" class="label labelstyle-02e10c linked-labelstyle-02e10c tooltipped tooltipped-n" style="background-color: #02e10c; color: #fff;">New Feature</a>
            </span>
              <div class="issue-meta">
      <span class="issue-meta-section opened-by">
        #439
          opened <time datetime="2015-01-19T09:01:52Z" is="relative-time" title="2015年1月19日 GMT+8下午5:01">on 19 Jan</time> by
          <a href="/springside/springside4/issues?q=is%3Aissue+is%3Aopen+author%3AFengXMGeek" aria-label="View all issues opened by FengXMGeek" class="tooltipped tooltipped-s muted-link">FengXMGeek</a>
      </span>


     <span class="issue-meta-section css-truncate issue-milestone">
          <a class="milestone-link muted-link css-truncate tooltipped tooltipped-s" aria-label="View all issues in this milestone" href="/springside/springside4/milestones/4.x">
            <span class="fi-flag"></span>
            <span class="css-truncate-target">
              4.x
            </span>
          </a>
      </span>


              </div>
            </div>

            <div class="table-list-cell table-list-cell-avatar">
            </div>

            <div class="table-list-cell issue-comments">
              <a href="/springside/springside4/issues/439" class="muted-link ">
                <span class="fi-comment"></span>
                2
              </a>
            </div>
          </li>

          <li id="issue_437" class=" read table-list-item js-navigation-item js-issue-row">


            <div class="table-list-cell table-list-cell-type">
              <a href="/springside/springside4/issues?q=is%3Aissue+is%3Aopen" aria-label="View all issues" class="tooltipped tooltipped-n">
                <span class="fi-info open"></span>
              </a>  </div>

            <div class="table-list-cell issue-title">


              <a href="/springside/springside4/issues/437" class="issue-title-link js-navigation-open">
                Spring+MyBATIS循环依赖问题，求指点
              </a>
              <div class="issue-meta">
      <span class="issue-meta-section opened-by">
        #437
          opened <time datetime="2015-01-11T02:54:57Z" is="relative-time" title="2015年1月11日 GMT+8上午10:54">on 11 Jan</time> by
          <a href="/springside/springside4/issues?q=is%3Aissue+is%3Aopen+author%3Adiguage" aria-label="View all issues opened by diguage" class="tooltipped tooltipped-s muted-link">diguage</a>
      </span>


      <span class="issue-meta-section css-truncate issue-milestone">
      </span>


              </div>
            </div>

            <div class="table-list-cell table-list-cell-avatar">
            </div>

            <div class="table-list-cell issue-comments">
              <a href="/springside/springside4/issues/437" class="muted-link ">
                <span class="fi-comment"></span>
                3
              </a>
            </div>
          </li>

          <li id="issue_436" class=" read table-list-item js-navigation-item js-issue-row">


            <div class="table-list-cell table-list-cell-type">
              <a href="/springside/springside4/issues?q=is%3Aissue+is%3Aopen" aria-label="View all issues" class="tooltipped tooltipped-n">
                <span class="fi-info open"></span>
              </a>  </div>

            <div class="table-list-cell issue-title">


              <a href="/springside/springside4/issues/436" class="issue-title-link js-navigation-open">
                SearchFilter 强制类型转换错误
              </a>
              <div class="issue-meta">
      <span class="issue-meta-section opened-by">
        #436
          opened <time datetime="2015-01-10T02:29:00Z" is="relative-time" title="2015年1月10日 GMT+8上午10:29">on 10 Jan</time> by
          <a href="/springside/springside4/issues?q=is%3Aissue+is%3Aopen+author%3Awszyquan" aria-label="View all issues opened by wszyquan" class="tooltipped tooltipped-s muted-link">wszyquan</a>
      </span>


      <span class="issue-meta-section css-truncate issue-milestone">
      </span>


              </div>
            </div>

            <div class="table-list-cell table-list-cell-avatar">
            </div>

            <div class="table-list-cell issue-comments">
              <a href="/springside/springside4/issues/436" class="muted-link ">
                <span class="fi-comment"></span>
                1
              </a>
            </div>
          </li>

          <li id="issue_433" class=" read table-list-item js-navigation-item js-issue-row">


            <div class="table-list-cell table-list-cell-type">
              <a href="/springside/springside4/issues?q=is%3Aissue+is%3Aopen" aria-label="View all issues" class="tooltipped tooltipped-n">
                <span class="fi-info open"></span>
              </a>  </div>

            <div class="table-list-cell issue-title">


              <a href="/springside/springside4/issues/433" class="issue-title-link js-navigation-open">
                关于jsp tag的问题？
              </a>
              <div class="issue-meta">
      <span class="issue-meta-section opened-by">
        #433
          opened <time datetime="2015-01-04T12:06:04Z" is="relative-time" title="2015年1月4日 GMT+8下午8:06">on 4 Jan</time> by
          <a href="/springside/springside4/issues?q=is%3Aissue+is%3Aopen+author%3Asphsyv" aria-label="View all issues opened by sphsyv" class="tooltipped tooltipped-s muted-link">sphsyv</a>
      </span>


      <span class="issue-meta-section css-truncate issue-milestone">
      </span>


              </div>
            </div>

            <div class="table-list-cell table-list-cell-avatar">
            </div>

            <div class="table-list-cell issue-comments">
              <a href="/springside/springside4/issues/433" class="muted-link issue-comments-no-comment">
                <span class="fi-comment"></span>
                0
              </a>
            </div>
          </li>

          <li id="issue_432" class=" read table-list-item js-navigation-item js-issue-row">


            <div class="table-list-cell table-list-cell-type">
              <a href="/springside/springside4/issues?q=is%3Aissue+is%3Aopen" aria-label="View all issues" class="tooltipped tooltipped-n">
                <span class="fi-info open"></span>
              </a>  </div>

            <div class="table-list-cell issue-title">


              <a href="/springside/springside4/issues/432" class="issue-title-link js-navigation-open">
                构建工具的迁移？
              </a>
              <div class="issue-meta">
      <span class="issue-meta-section opened-by">
        #432
          opened <time datetime="2015-01-04T06:37:03Z" is="relative-time" title="2015年1月4日 GMT+8下午2:37">on 4 Jan</time> by
          <a href="/springside/springside4/issues?q=is%3Aissue+is%3Aopen+author%3Aalleywind" aria-label="View all issues opened by alleywind" class="tooltipped tooltipped-s muted-link">alleywind</a>
      </span>


      <span class="issue-meta-section css-truncate issue-milestone">
      </span>


              </div>
            </div>

            <div class="table-list-cell table-list-cell-avatar">
            </div>

            <div class="table-list-cell issue-comments">
              <a href="/springside/springside4/issues/432" class="muted-link ">
                <span class="fi-comment"></span>
                2
              </a>
            </div>
          </li>

        </ul>
        <div class="pagination-centered">
          <ul class="pagination">
            <li class="arrow unavailable"><a href="">&laquo;</a></li>
            <li class="current"><a href="">1</a></li>
            <li><a href="">2</a></li>
            <li><a href="">3</a></li>
            <li><a href="">4</a></li>
            <li class="unavailable"><a href="">&hellip;</a></li>
            <li><a href="">12</a></li>
            <li><a href="">13</a></li>
            <li class="arrow"><a href="">&raquo;</a></li>
          </ul>
        </div>

      </div>
  </div>
  <div class="large-1 columns">
    <nav class="sunken-menu repo-nav"  >
      <ul class="sunken-menu-group">
        <li class="tooltipped tooltipped-w" >
          <a href="${ctx}/hardenCN/酒店订单接口" class="sunken-menu-item" >
            <span class="fi-info"><span class="full-word show-for-small-only">详情</span></span>
          </a>    </li>
        <li class="tooltipped tooltipped-w" >
          <a href="${ctx}/hardenCN/酒店订单接口/issues" class="selected sunken-menu-item" >
            <span class="fi-alert"><span class="full-word show-for-small-only">反馈</span></span>
          </a>      </li>
        <li class="tooltipped tooltipped-w">
          <a href="/hardenCN/TulingJsonProcess/graphs"  class="sunken-menu-item" >
            <span class="fi-graph-bar"><span class="full-word show-for-small-only">统计</span></span>
          </a>    </li>
      </ul>

      <shiro:authenticated>
        <div class="sunken-menu-separator"></div>
        <ul class="sunken-menu-group">
          <li class="tooltipped tooltipped-w">
            <a href="/hardenCN/TulingJsonProcess/settings"  class="sunken-menu-item" >
              <i class="fi-wrench"></i>
            </a>      </li>
        </ul>
      </shiro:authenticated>
    </nav>
  </div>


</div>

<hr class="large-10 small-12 medium-10 columns large-centered small-centered medium-centered"
    style="margin-top: 50px;padding-bottom: 20px"/>
</body>
</html>
