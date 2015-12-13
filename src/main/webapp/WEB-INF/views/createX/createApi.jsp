<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="staticPath" value="${pageContext.request.contextPath}/static"/>
<html>
<head>
    <title>发布数据</title>
</head>
<body>

<div class="new-api-form">
    <form action="${ctx}/new" method="post">
    <div class="row">
        <div class="large-6 columns small-12 medium-6 large-offset-2 medium-offset-2">
            <label for="ownerId">拥有者</label>
            <button href="#" id="ownerId" data-dropdown="ownerDrop" aria-controls="drop1" aria-expanded="false" class="button dropdown tiny radius">
                <img src="${staticPath}/images/dog1.png" alt="" height="20" width="20" style="border-radius: 2px"/>
                <span>${user.selfPathName}</span>
                <input type="hidden" id="createUser" name="createUser" value="${user.id}">
            </button>
            <ul id="ownerDrop" data-dropdown-content class="f-dropdown text-left" aria-hidden="true">
                <li class="hide"><a class="owners" href="javascript:void(0)"><img src="${staticPath}/images/dog1.png" alt="" height="20" width="20" style="border-radius: 2px"/>
                    <span>HardenCNassadasdsadaddadd</span></a></li>
                <li><a class="owners" href="javascript:void(0)"><img src="${staticPath}/images/dog2.png" alt="" height="20" width="20" style="border-radius: 2px"/>
                    <span>ZHANG san</span></a></li>
                <li><a class="owners" href="javascript:void(0)"><img src="${staticPath}/images/dog3.png" alt="" height="20" width="20" style="border-radius: 2px"/>
                    <span>Org live</span></a></li>
                <li><a class="owners" href="javascript:void(0)"><img src="${staticPath}/images/dog4.png" alt="" height="20" width="20" style="border-radius: 2px"/>
                    <span>阿斯达岁的</span></a></li>
            </ul>
        </div>
    </div>

    <div class="row">

        <div class="large-6 small-12 medium-6 columns large-offset-2 medium-offset-2">
            <div class="row">
                <div class="large-8 columns  medium-8">
                    <label for="proName" data-tooltip aria-haspopup="true" class="has-tip" title="伟大的项目其项目名总是很简洁.">项目名</label>
                    <input type="text" id="proName" class="radius" placeholder="项目名称" name="name" value="${project.name}"/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="large-6 small-12 medium-6 columns large-offset-2 medium-offset-2">
            <label for="proDesc">描述(<small>可选</small>)</label>
            <input type="text" id="proDesc" class="radius" placeholder="描述" name="simpleInfo" value="${project.simpleInfo}"/>
        </div>
    </div>
    <div class="row">
        <div class="large-6 small-12 medium-6 columns large-offset-2 medium-offset-2">
            <label for="proDesc">标签(<small>可选</small>)</label>
            <input type="text" id="proTag" class="radius" placeholder="标签" name="flags" value="${project.flags}"/>
        </div>
    </div>

    <div class="row">
        <div class="large-6 small-12 medium-6 columns large-offset-2 medium-offset-2">
            <label for="privatePro">私有项目?</label>
            <div class="switch round tiny">
                <input id="privatePro" type="checkbox" name="isPrivate" value="${project.isPrivate}">
                <label for="privatePro"></label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="large-6 small-12 medium-6 columns large-offset-2 medium-offset-2">

        </div>
    </div>
    <div class="row">
        <div class="large-6 small-12 medium-6 columns large-offset-2 medium-offset-2">
            <hr style="margin-bottom: 30px;"/>
        </div>
    </div>
    <div class="row">
        <div class="large-6 small-12 medium-6 columns large-offset-2 medium-offset-2">
            <input type="submit" class="button tiny secondary" value="创建"/>
        </div>
    </div>




    </form>
</div>

<hr class="large-10 small-12 medium-10 columns large-centered small-centered medium-centered"
    style="margin-top: 50px;padding-bottom: 20px"/>

<script>
    $(".owners").on("click",function(){
        $("[data-dropdown='ownerDrop']").html($(this).html());
        $(".owners").parent().show();
        $(this).parent().hide();
    });
</script>
</body>
</html>
