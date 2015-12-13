<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="staticPath" value="${pageContext.request.contextPath}/static"/>


<!DOCTYPE html>
<html>
<head>
<title><sitemesh:title/></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	<title>GetAnyData.com</title>

	<link rel="stylesheet" href="${staticPath}/foundation-5.5.2/css/foundation.min.css"/>
	<link rel="stylesheet" href="${staticPath}/foundation-icons/foundation-icons.css"/>
	<link rel="stylesheet" href="${staticPath}/foundation-5.5.2/css/normalize.css"/>
	<link rel="stylesheet" href="${staticPath}/styles/app.css"/>
	<script src="${staticPath}/foundation-5.5.2/js/vendor/jquery.js"></script>
	<script src="${staticPath}/foundation-5.5.2/js/vendor/modernizr.js"></script>
<sitemesh:head/>
</head>

<body>
		<%@ include file="/WEB-INF/layouts/header.jsp"%>
			<sitemesh:body/>
		<%@ include file="/WEB-INF/layouts/footer.jsp"%>
	<script src="${staticPath}/foundation-5.5.2/js/foundation.min.js"></script>
	<script>
		$(document).foundation({
			accordion: {
				// specify the class used for active (or open) accordion panels
				active_class: 'active',
				// allow multiple accordion panels to be active at the same time
				multi_expand: true
			}
		});
		$('.menu-icon').click(function () {
			false
		});
	</script>
	<script src="${staticPath}/scripts/app.js"></script>
</body>
</html>