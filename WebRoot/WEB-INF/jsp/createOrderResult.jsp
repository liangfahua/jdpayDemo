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
<script src="${pageContext.request.contextPath}/js/qrcode.js"></script>
<script type="text/javascript">
window.onload = function(){

    // 二维码对象
    var qrcode;

    // 默认设置
    var content;
    var size;

    // 设置点击事件

        // 获取内容
        content = document.getElementById("content").value;
        content = content.replace(/(^\s*)|(\s*$)/g, "");

        // 获取尺寸
        size = document.getElementById("size").value;

        // 检查内容
        if(content==''){
           // alert('请输入内容！');
            return false;
        }

        // 检查尺寸
        if(!/^[0-9]*[1-9][0-9]*$/.test(size)){
            alert('请输入正整数');
            return false;
        }

        if(size<100 || size>500){
            alert('尺寸范围在100～500');
            return false;
        }

        // 清除上一次的二维码
        if(qrcode){
            qrcode.clear();
        }

        // 创建二维码
        qrcode = new QRCode(document.getElementById("qrcode"), {
            width : size,//设置宽高
            height : size
        });

        qrcode.makeCode(document.getElementById("content").value);
    }
</script>
</head>
<body>

	<div class="content" align="center">

		${errorMsg} <br />
		<label>订单号:</label>
		<label>${resultData.orderId}</label>
		<br />
		<label>商户号:</label>
		<label>${resultData.merchant}</label>
		<br />
		<label>商户名:</label>
		<label>${resultData.merchantName}</label>
		<br />
		<label> 金额:</label>
		<label>${resultData.amount}</label>
		<br />
		<label> 交易号：</label>
	    <label>${resultData.tradeNum}</label>
		<br />
		<label> 二维码：</label>
	    <label><input type="hidden" name="content" id="content" value="${resultData.qrCode}"> ${resultData.qrCode}</label>
	    <br />
	    <label>  有效期：</label>
	    <label>${resultData.expireTime}</label>
	    <br />
       <p><input type="hidden" id="size" value="150"></p>
       <div id="qrcode"></div>

	</div>

</body>
</html>

