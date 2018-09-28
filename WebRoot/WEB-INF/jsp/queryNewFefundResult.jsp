<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"
	scope="request" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>京东支付</title>
<link rel="stylesheet" type="text/css" href="${ctx}/css/main.css">
</head>
<body>
	<div class="content" align="center">
		<label>版本号：</label>
		<label>${rresp.version}</label>
		<br />
		<label>商户号：</label>
		<label>${rresp.merchant}</label>
		<br />
		<label> 交易返回码： </label>
		<label> ${rresp.result.code}</label>
		<br />
		<label> 交易返回描述： </label>
		<label> ${rresp.result.desc} </label>
		<br />
		<c:forEach items="${rresp.refList}" var="refund">
			<label> 原流水号： </label>
		<label> ${refund.tradeNum}</label>
		<br />
		<label> 流水号： </label>
		<label> ${refund.oTradeNum}</label>
		<br />
		<label> 金额： </label>
		<label> ${refund.amount}</label>
		<br />
		<label> 交易时间： </label>
		<label> ${refund.tradeTime}</label>
		<br />
		<label> 状态： </label>
		<label> ${refund.status}</label>
		<br />
		
		</c:forEach>
	</div>

</body>
</html>
