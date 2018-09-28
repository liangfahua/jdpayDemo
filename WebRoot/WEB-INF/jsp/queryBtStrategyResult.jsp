<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"
	scope="request" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>京东支付</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

	<div class="content" align="center">

		${errorMsg} <br /> <label>版本号:</label> <label>${presp.version}</label>
		<br /> <label>商户号:</label> <label>${presp.merchant}</label> <br /> <label>交易流水:</label>
		<label>${presp.tradeNum}</label> <br />
			<label> 返回码： </label>
			<label> ${presp.result.code}</label>
			<br />
			<label> 返回描述： </label>
			<label> ${presp.result.desc} </label>
			<br />
			<c:forEach items="${presp.billsInfoList}" var="qrte">

			<br />
			<label> 期数: </label>
			<label>${qrte.plan}期</label>
			<br />
			<label> 费率: </label>
			<label>${qrte.rate} </label>
			<br />
			<label> 总手续费: </label>
			<label>${qrte.fee}</label>
			<br />

			<label> 每期费率: </label>
			<label>${qrte.planFee}</label>
			<br />
			<label> 首期付款: </label>
			<label>${qrte.firstPay}</label>
			<br />
			<label> 非首期付款: </label>
			<label>${qrte.laterPay}</label>
			<br />
			<label> 付款总金额: </label>
			<label>${qrte.total}</label>
			<br />
			<br />
		</c:forEach>
	</div>

</body>
</html>
