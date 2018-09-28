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

	<div class="content">
		<div class="content_0" align="center">
			<br /> <br /> <br />
			<label> 交易流水号：</label>
			<label>${tradeResultRes.tradeNum}</label>
			<br />
			<label> 金额：</label>
			<label>${tradeResultRes.amount}分</label>
			<br />
			<label> 币种：</label>
			<label>${tradeResultRes.currency}</label>
			<br />
			<label> 交易时间：</label>
			<label>${tradeResultRes.tradeTime}</label>
			<br />
			<label> 交易备注：</label>
			<label>${tradeResultRes.note}</label>
			<br />
			<label> 状态：</label>
			<label>${tradeResultRes.status}-成功</label>
		</div>
	</div>

</body>
</html>
