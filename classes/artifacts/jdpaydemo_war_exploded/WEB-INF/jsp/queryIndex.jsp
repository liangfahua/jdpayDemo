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
<title>交易查询</title>
</head>
<body>
	<div class="content">
		<div class="content_0">
			<div class="content_1">
				<form method="post" action="${ctx}/queryOrder.htm"
					id="queryTradeForm">

					<ul class="form-wrap" id="J-form-wrap">
						<li class="form-item form-item-border clearfix"><label>接口版本:</label>
							<input type="text" class="" name="version" value="V2.0"
							data-callback="input.status" /></li>
						<li class="form-item form-item-border clearfix"><label>商户号:
						</label> <input type="text" class="" name="merchantNum"
							value="${merchantNum}" placeholder="请输入商户号" /></li>

						<li class="form-item form-item-border clearfix"><label>查询类型:
						</label> <input type="text" class="" name="tradeType" value="0"
							placeholder="1表示退款，0表示消费" />1表示退款，0表示消费</li>

						<li class="form-item form-item-border clearfix"><label>交易号:
						</label> <input type="text" class="" name="tradeNum" value=""
							placeholder="请输入交易号" /></li>
						<li class="form-item form-item-border clearfix"><label>原交易号:
						</label> <input type="text" class="" name="oTradeNum" value=""
							placeholder="请输入原交易号" /> <input type="submit" value="查询"
							class="btn"></li>
					</ul>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
