<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"
	scope="request" />
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>模拟商户--用户解绑页面</title>
<link rel="stylesheet" type="text/css" href="${ctx }/css/main.css">
</head>
</head>
<body>

	<form method="post" action="${ctx }/getUserRelation.htm" id="getUserRelation">
		<div class="content">
			<div class="content_1">
				<ul class="form-wrap" id="J-form-wrap">

					<li class="form-item form-item-border clearfix"><label>接口版本</label>
						<input type="text" class="" name="version" value="V2.0"
						maxlength="18" /></li>

					<li class="form-item form-item-border clearfix"><label>商户号</label>
						<input type="text" class="" name="merchant" value="22294531"
						placeholder="请输入商户号" maxlength="50" /></li>
					<li class="form-item form-item-border clearfix"><label>用户ID</label>
						<input type="text" class="" name="userId" value=""
						placeholder="请输入用户ID" maxlength="50" /></li>	

					<li class="form-item form-item-border clearfix"><input
						type="submit" value="查询" class="btn1"></li>
				</ul>
			</div>
		</div>
	</form>
</body>
</html>
