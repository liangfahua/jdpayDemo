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
			<label> 交易号: </label>
			<label> ${resultData.tradeNum}</label>
			<br />
			<label> 原交易号: </label>
			<label> ${resultData.oTradeNum}</label>
			<br />
			<label> 交易币种:</label>
			<label>${resultData.currency} </label>
			<br />
			<label> 交易日期:</label>
			<label> ${resultData.tradeTime}</label>
			<br />
			<label> 交易金额:</label>
			<label> ${resultData.amount} 分</label>
			<br />
			<label> 交易备注: </label>
			<label> ${resultData.note}</label>
			<br />

			<label> 交易状态: </label>
			<c:if test="${resultData.status eq '0'}">
				<label>处理中</label>
			</c:if>
			<c:if test="${resultData.status eq '1'}">
				<label>成功</label>
			</c:if>
			<c:if test="${resultData.status eq '2'}">
				<label> 失败</label>
			</c:if>
			<br />
			<label> 交易返回码：</label>
			<label>${resultData.result.code}</label>
			<br />
			<label> 交易返回描述：</label>
			<label>${resultData.result.desc}</label>
			<br />
		</c:if>
	</div>

</body>
</html>
