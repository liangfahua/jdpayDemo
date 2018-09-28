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
		<label>交易流水：</label>
		<label>${rresp.tradeNum}</label>
		<br />
		<label> 交易类型:</label>
		<c:if test="${rresp.tradeType eq '0'}">
			<label>消费</label>
		</c:if>
		<c:if test="${rresp.tradeType eq '1'}">
			<label>退款</label>
		</c:if>
		<br />
		<label> 交易金额:</label>
		<label> ${rresp.amount}分</label>
		<br />
		<label> 交易单位: </label>
		<label> ${rresp.currency}</label>
		<br />
		<label> 交易时间:</label>
		<label> ${rresp.tradeTime}</label>
		<br />
		<label> 交易状态：</label>
		<c:if test="${rresp.status eq '0'}">
			<label> 处理中</label>
		</c:if>
		<c:if test="${rresp.status eq '1'}">
			<label> 成功</label>
		</c:if>
		<c:if test="${rresp.status eq '2'}">
			<label> 失败</label>
		</c:if>
		<br />
		<label> 交易返回码： </label>
		<label> ${rresp.result.code}</label>
		<br />
		<label> 交易返回描述： </label>
		<label> ${rresp.result.desc} </label>
		<br />
	</div>

</body>
</html>
