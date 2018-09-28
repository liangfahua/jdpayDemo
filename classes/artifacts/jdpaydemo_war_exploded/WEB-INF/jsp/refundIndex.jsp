<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"
	scope="request" />
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>模拟商户--订单退款页面</title>
<link rel="stylesheet" type="text/css" href="${ctx }/css/main.css">
</head>
</head>
<body>

	<form method="post" action="${ctx }/refundOrder.htm" id="paySignForm">
		<div class="content">
			<div class="content_1">
				<ul class="form-wrap" id="J-form-wrap">

					<li class="form-item form-item-border clearfix"><label>接口版本</label>
						<input type="text" class="" name="version" value="V2.0"
						maxlength="18" /></li>

					<li class="form-item form-item-border clearfix"><label>商户号</label>
						<input type="text" class="" name="merchant" value="22294531"
						placeholder="请输入商户号" maxlength="50" /></li>

					<li class="form-item form-item-border clearfix"><label>交易号</label>
						<input type="text" class="" name="tradeNum" value=""
						placeholder="请输入交易号" maxlength="50" /></li>

					<li class="form-item form-item-border clearfix"><label>原交易号</label>
						<input type="text" class="" name="oTradeNum" value=""
						placeholder="请输入原交易号" maxlength="50" /></li>

					<li class="form-item form-item-border clearfix"><label>交易时间</label>
						<input type="text" class="" name="tradeTime" value=""
						pattern="yyyyMMddHHmmss" placeholder="请输入交易时间" maxlength="50" />
					</li>

					<li class="form-item form-item-border clearfix"><label>交易金额</label>
						<input type="text" class="" name="amount" value="1"
						autocomplete="off" placeholder="请输入交易金额" maxlength="50"
						data-callback="input.status" /></li>

					<li class="form-item form-item-border clearfix"><label>货币种类</label>
						<input type="text" class="" name="currency" value="CNY"
						autocomplete="off" placeholder="请输入交易币种" maxlength="50"
						data-callback="input.status" /></li>

					<li class="form-item form-item-border clearfix"><label>异步通知</label>
						<input type="text" class="" name="notifyUrl" autocomplete="off"
						placeholder="请输入异步通知地址"
						value="http://jdpaydemo.jd.com/asynNotify.htm" maxlength="200"
						data-callback="input.status" /></li>

					<li class="form-item form-item-border clearfix"><label>门店号</label>
						<input type="text" class="" name="device" value=""
						autocomplete="off" placeholder="门店号" maxlength="200"
						data-callback="input.status" /></li>

					<li class="form-item form-item-border clearfix"><label>用户终端信息</label>
						<input type="text" class="" name="termInfoId" value=""
							   autocomplete="off" placeholder="用户终端信息" maxlength="200"
							   data-callback="input.status" /></li>

					<li class="form-item form-item-border clearfix"><label>交易备注</label>
						<input type="text" class="" name="note" value=""
							   autocomplete="off" placeholder="交易备注" maxlength="200"
							   data-callback="input.status" /></li>

					<li class="form-item form-item-border clearfix"><input
						type="submit" value="退款" class="btn1"></li>
				</ul>
			</div>
		</div>
	</form>
</body>
</html>
