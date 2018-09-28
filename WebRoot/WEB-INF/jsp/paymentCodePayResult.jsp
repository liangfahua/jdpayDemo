<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="expires" content="0" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<title>"京东支付--付款码支付</title>

</head>
<body>
		<div class="content">
			<div class="content_0">
					<label>tradeNum:</label>
					<input type="text" name="tradeNum" value="${resultData.tradeNum}"><br />
					<label>tradeTime:</label>
					<input type="text" name="tradeTime" value="${resultData.tradeTime}"><br />
					<label>amount:</label>
					<input type="text" name="amount" value="${resultData.amount}"><br />
					<label>currency:</label>
					<input type="text" name="currency" value="${resultData.currency}"><br />
					<label>note:</label>
					<input type="text" name="note" value="${resultData.note}"><br />
					<label>sign:</label>
					<input type="text" name="sign" value="${resultData.sign}"><br />
					<label>version:</label>
					<input type="text" name="version" value="${resultData.version}"><br />
					<label>merchant:</label>
					<input type="text" name="merchant" value="${resultData.merchant}"><br />
					<label>status:</label>
					<input type="text" name="status" value="${resultData.status}"><br />
					<label>result.code:</label>
					<input type="text" name="code" value="${resultData.result.code}"><br />
					<label>result.desc:</label>
					<input type="text" name="desc" value="${resultData.result.desc}"><br />
				</div>
			</div>

</body>
</html>