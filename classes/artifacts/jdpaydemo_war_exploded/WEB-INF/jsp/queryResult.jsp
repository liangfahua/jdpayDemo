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
		<label>${presp.tradeNum}</label> <br /> <label> 交易类型:</label>
		<c:if test="${presp.tradeType eq '0'}">
			<label>消费</label>
		</c:if>
		<c:if test="${presp.tradeType eq '1'}">
			<label>退款</label>
		</c:if>
		<br /> <label> 交易状态：</label>
		<c:if test="${presp.status eq '0'}">
			<label>创建</label>
		</c:if>
		<c:if test="${presp.status eq '1'}">
			<label>处理中</label>
		</c:if>
		<c:if test="${presp.status eq '2'}">
			<label>成功</label>
		</c:if>
		<c:if test="${presp.status eq '3'}">
			<label>失败</label>
		</c:if>
		<c:if test="${presp.status eq '4'}">
			<label>关闭</label>
		</c:if>
		<br />
		<c:forEach items="${presp.payList}" var="qrte">

			<label> 支付方式: </label>
			<label> <c:if test="${qrte.payType eq '0'}">
				银行卡
			</c:if> <c:if test="${qrte.payType eq '1'}">
				白条
			</c:if> <c:if test="${qrte.payType eq '2'}">
				余额
			</c:if> <c:if test="${qrte.payType eq '3'}">
				优惠券
			</c:if> <c:if test="${qrte.payType eq '5'}">
				小金库
			</c:if>
			</label>
			<br />
			<label> 交易金额: </label>
			<label>${qrte.amount}分</label>
			<br />
			<label> 交易单位: </label>
			<label>${qrte.currency} </label>
			<br />
			<label> 交易时间: </label>
			<label>${qrte.tradeTime}</label>
			<br />

			<label> 持卡人姓名: </label>
			<label>${qrte.detail.cardHolderName}</label>
			<br />
			<label> 持卡人手机号: </label>
			<label>${qrte.detail.cardHolderMobile}</label>
			<br />
			<label> 证件类型: </label>
			<label> <c:if test="${qrte.detail.cardHolderType eq '0'}">
				身份证
			</c:if>
			</label>
			<br />
			<label> 身份证号: </label>
			<label>${qrte.detail.cardHolderId}</label>
			<br />
			<label> 卡号: </label>
			<label>${qrte.detail.cardNo}</label>
			<br />
			<label> 银行编码: </label>
			<label>${qrte.detail.bankCode}</label>
			<br />
			<label> 银行卡类型: </label>

			<c:if test="${qrte.detail.cardType eq '1'}">
				<label>借记卡</label>
			</c:if>
			<c:if test="${qrte.detail.cardType eq '2'}">
				<label>信用卡</label>
			</c:if>
			<br />
			<br />
		</c:forEach>
	</div>

</body>
</html>
