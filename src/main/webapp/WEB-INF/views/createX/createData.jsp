<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="staticPath" value="${pageContext.request.contextPath}/static"/>
<html>
<head>
  <title>创建数据</title>
    <link rel="stylesheet" type="text/css" media="screen" href="${staticPath}/css/editor.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${staticPath}/css/gfm.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${staticPath}/css/github.css" />
    <link rel="stylesheet" href="${staticPath}/codemirror/lib/codemirror.css">

    <script type="text/javascript" src="${staticPath}/prettify/prettify.js"></script>
    <script type="text/javascript" src="${staticPath}/scripts/marked.js"></script>
    <script type="text/javascript" src="${staticPath}/codemirror/lib/codemirror.js"></script>
    <script type="text/javascript" src="${staticPath}/codemirror/markdown.js"></script>

    <script>
        function chooseApi(type){
            $('#apiType').html($('#apiType-'+type).html());
            $('#apiTypeValue').val(type);
            $('#api-md-desc').show();
            $('#api-md-btn').show();
        }
    </script>
</head>
<body>
<c:if test="${not empty message}">
<div data-alert class="alert-box warning text-center">
    ${message}
    <a href="#" class="close">&times;</a>
</div>
    </c:if>

<div class="header">
    <div class="row">
        <div class="large-8 small-12 medium-8 columns">
            <div class="left">
                <h3>
                    <img src="${staticPath}/images/icon/http_icon.png" width="40" height="40" alt=""/>
                    <a href="${ctx}/${user.selfPathName}">
                        <b>${user.selfPathName}</b>
                    </a>
                    /
                    <a href="${ctx}/${user.selfPathName}/${project.name}">
                        <b>${project.name}</b>
                    </a>
                    <%--<span data-tooltip aria-haspopup="true" class="has-tip" title="含收费项目."><i class="fi-yen"></i></span>--%>
                    <c:if test="${project.isPrivate == 1}">
                        <span data-tooltip aria-haspopup="true" class="has-tip" title="私有项目."><i class="fi-lock"></i></span>
                    </c:if>
                    <c:forEach var="flag" items="${flags}">
                        <a class="tag-container" href="${ctx}/tags/${flag}">${flag}</a>
                    </c:forEach>
                    <%--<a class="tag-container" href="http://dev.innmall.cn/api">酒店</a>--%>
                    <%--<a class="tag-container" href="http://dev.innmall.cn/api">O2O</a>--%>
                </h3>
            </div>
        </div>
        <div class="large-4 small-12 medium-4 columns">
            <%--这里要用token防止重复提交--%>
            <div class="right">
                <a class="tag-container-tongji" href=""><i class="fi-star"></i> star <span
                        class="star-share-num">0</span></a>
                <a class="tag-container-tongji" href=""><i class="fi-share"></i> share <span class="star-share-num">0</span></a>

            </div>
        </div>
    </div>
</div>

<div class="row api-content">


    <div class="large-8 small-12 columns">
        <p style="margin-top: 20px">${project.simpleInfo}</p>

        <%--<a href="#" class="" id="createData-add-data-btn">添加接口</a>--%>
        <div class="row collapse prefix-radius">

            <div class="large-3 columns">
                <label for="apiType">接口描述类型</label>
                <button href="#" id="apiType" data-dropdown="apiType-dropdown" aria-controls="apiType-dropdown"
                        aria-expanded="false" class="button tiny success radius dropdown">选择接口类型</button><br>
                <ul id="apiType-dropdown" data-dropdown-content class="f-dropdown" aria-hidden="true">
                    <li><a href="javascript:chooseApi('POST')" id="apiType-POST">HTTP-POST</a></li>
                    <li><a href="javascript:chooseApi('GET')" id="apiType-GET">HTTP-GET</a></li>
                    <li><a href="javascript:chooseApi('PUT')" id="apiType-PUT">HTTP-PUT</a></li>
                    <li><a href="javascript:chooseApi('DELETE')" id="apiType-DELETE">HTTP-DELETE</a></li>
                </ul>
                <input type="hidden" id="apiTypeValue" name="apiType"/>
            </div>
            <div class="large-9 columns">
                <label for="apiName">接口名称</label>
                <input type="text" placeholder="接口名称" id="apiName" name="apiName" class="radius"/>
            </div>

        </div>

    </div>


    <div class="large-4 columns">
        <div class="panel callout radius hide" id="api-type-intr">
            <h5>接口类型</h5>
            <p>描述你的接口属于什么类型</p>
        </div>
        <div class="panel callout radius" id="api-name-intr">
            <h5>接口名称介绍</h5>
            <p>30个字符内，介绍你的接口用来做什么</p>
        </div>
    </div>
</div>
<div class="api-md-desc">
    <div class="row">
        <div class="large-8 columns">
            <div>
                <div class="editor-container">
                    <a href="javascript:void(0)" id="addTemplate">模板</a>
                    <a href="javascript:void(0)" id="addHeads">请求头</a>
                    <a href="javascript:void(0)" id="addBody">请求体</a>
                    <a href="javascript:void(0)" id="addUndo">撤销</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
            <div class="large-8 columns">
                    <div class="shadow">
                        <div class="editor">
                            <div id="editor" class="editor-container">
                                <textarea id="code" name="code"></textarea>
                            </div>
                        </div>
                    </div>
            </div>
    </div>
    <div class="row">
        <div class="large-8 columns">
                <div class="markdown">
                    <div id="markdown" class="md-gfm editor-container"></div>
                </div>
        </div>
    </div>
</div>

<div id="api-md-btn">
    <div class="row">
        <div class="large-8 columns">
            <div class="text-center">
                <input type="button" id="save-btn" class="button radius secondary tiny" value="保存"/>
            </div>
        </div>
    </div>
</div>






<hr class="large-10 small-12 medium-10 columns large-centered small-centered medium-centered"
    style="margin-top: 50px;padding-bottom: 20px"/>

<script type="text/javascript" src="${staticPath}/scripts/editor.js"></script>
<script>
    $("#apiName").on("click",function(){
        $("#api-name-intr").show();
        $("#api-type-intr").hide();
    });
    $("#apiType").on("click",function(){
        $("#api-type-intr").show();
        $("#api-name-intr").hide();
    });

    $('#save-btn').on("click",function(){
        var apiContent = editor.getValue();
        var apiType = $('#apiTypeValue').val();
        var apiName = $('#apiName').val();
        $.ajax({
            type: "POST",
            url: "${ctx}/project/v1/data/create",
            headers:{"Content-Type":"application/json; charset=UTF-8"},
            processData:false,
            data: JSON.stringify({"project":{"id":${project.id}},
                apiType:apiType,
                apiName:apiName,
                apiContent:apiContent
            }),
            dataType:"json",
            success: function(msg){
                alert( "Data Saved: " + msg );
            }
        });
    });


</script>
</body>
</html>
