<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"
	scope="request" />
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${ctx}/css/main.css">
<title>白条策略查询</title>
</head>
<body>
	<div class="content">
		<div class="content_0">
			<div class="content_1">
				<form method="post" action="${ctx}/queryBtStrategy.htm"
					id="queryBtStrategy">

					<ul class="form-wrap" id="J-form-wrap">
						<li class="form-item form-item-border clearfix"><label>接口版本:</label>
							<input type="text" class="" name="version" value="V2.0"
							data-callback="input.status" /></li>
						<li class="form-item form-item-border clearfix"><label>商户号:
						</label> <input type="text" class="" name="merchantNum"
							value="${merchantNum}" placeholder="请输入商户号" /></li>

						<li class="form-item form-item-border clearfix"><label>交易金额:
						</label> <input type="text" class="" name="amount" value="1001"
							placeholder="商户订单的资金总额。单位：分，大于10元才能显示分期策略" />单位：分，金额大于10元才能显示分期策略</li>

						<li class="form-item form-item-border clearfix"><label>交易号流水:
						</label> <input type="text" class="" name="tradeNum" value=""
							placeholder="请输入交易号" /></li>
						<li class="form-item form-item-border clearfix">
							<input type="submit" value="查询" class="btn"></li>
					</ul>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
