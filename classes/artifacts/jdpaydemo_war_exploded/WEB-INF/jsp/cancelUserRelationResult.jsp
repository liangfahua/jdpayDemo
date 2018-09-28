<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"
	scope="request" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>京东支付</title>
<link rel="stylesheet" type="text/css" href="${ctx }/css/main.css">
</head>

</head>
<body>

	<div class="content" align="center">

		${errorMsg} <br />
		<c:if test="${resultData ne null}">
		
			<label> 返回码：</label>
			<label>${resultData.result.code}</label>
			<br />
			<label> 返回描述：</label>
			<label>${resultData.result.desc}</label>
			<br />
		</c:if>
	</div>

</body>
</html>
