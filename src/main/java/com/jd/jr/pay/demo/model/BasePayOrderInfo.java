package com.jd.jr.pay.demo.model;

/**
 * 商户加密用的基本类
 * 为保证信息安全，表单中的各个字段除了merchant（商户号）、版本号（version）、签名（sign）以外，其余字段全部采用3DES进行加密。
 */
public class BasePayOrderInfo {
	
	// 版本号 当前固定填写：V2.0 ->必须填写
	private String version;

	// 交易信息签名 ->必须填写
	private String sign;

	// 12位的二级商户号 ->必须填写
	private String merchant;

	// 商户门店号 ->非必须填写
	private String device;

	// 交易流水号:商户提供的唯一交易流水号（字母和数字）->必须填写
	private String tradeNum;

	// 交易名称:商户提供的订单的标题/商品名称/关键字等 ->必须填写
	private String tradeName;

	// 交易描述 ->非必须填写
	private String tradeDesc;

	// 交易时间:订单生成时间，格式为"yyyyMMddHHmmss" ->必须填写
	private String tradeTime;

	// 交易金额:商户提供的订单的资金总额，单位：分，必须为整数，大于0. ->必须填写
	private String amount;

	// 货币种类:货币类型，固定填CNY ->必须填写
	private String currency;

	// 商户备注 ->非必须填写
	private String note;

	// 支付成功跳转路径:支付成功后跳转的URL ->必须填写
	private String callbackUrl;

	// 异步通知页面地址:支付完成后，异步通知商户相关支付结果，此url外网必须能够访问。->必须填写
	private String notifyUrl;

	// 用户IP ->非必须填写
	private String ip;

	// 用户指定卡号:指定银行卡号（非空时不要传指定身份证号和姓名） ->非必须填写
	private String specCardNo;

	// 用户指定身份证:身份证号（身份证号和姓名同时非空时不要传指定卡号） ->非必须填写
	private String specId;

	// 用户指定姓名:姓名（身份证号和姓名不能同时为空） ->非必须填写
	private String specName;

	private String payChannel;

	private String userType;

	// userId：商户平台用户的唯一账号。注：userid是商户端系统的用户唯一账号。 ->必须填写
	private String userId;

	// 订单失效时长 订单的失效时长，单位：秒，失效后则不能再支付，默认失效时间为604800秒(7天) ->非必须填写
	private String expireTime;

	// 订单类型:0-实物，1-虚拟 ->必须填写
	private String orderType;

	// 业务类型:订单业务类型 ->非必须填写
	private String industryCategoryCode;
	
	// 收款商户:收银台展示的收款商户，默认为商户号对应的商户 ->非必须填写
	private String payMerchant;
	
	// 厂商编码 ->非必须填写
	private String vendorId;
	
	// 商品信息 :商品信息列表，FORM表单中以json格式提交 ->非必须填写
	private String goodsInfo;
	
	// 订单商品数量 ->非必须填写
	private String orderGoodsNum;
	
	// 收货信息:收货信息，FORM表单中以json格式提交 ->非必须填写
	private String receiverInfo;

	// 终端信息 ->非必须填写
	private String termInfo;

	// 缓存证书 ->非必须填写
	private String cert;
	
	private String tradeType;

	// 风控信息 ->非必须填写
	private String riskInfo;
	
	
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public String getDevice() {
		return device;
	}
	public void setDevice(String device) {
		this.device = device;
	}
	public String getTradeNum() {
		return tradeNum;
	}
	public void setTradeNum(String tradeNum) {
		this.tradeNum = tradeNum;
	}
	public String getTradeName() {
		return tradeName;
	}
	public void setTradeName(String tradeName) {
		this.tradeName = tradeName;
	}
	public String getTradeDesc() {
		return tradeDesc;
	}
	public void setTradeDesc(String tradeDesc) {
		this.tradeDesc = tradeDesc;
	}
	public String getTradeTime() {
		return tradeTime;
	}
	public void setTradeTime(String tradeTime) {
		this.tradeTime = tradeTime;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getCallbackUrl() {
		return callbackUrl;
	}
	public void setCallbackUrl(String callbackUrl) {
		this.callbackUrl = callbackUrl;
	}
	public String getNotifyUrl() {
		return notifyUrl;
	}
	public void setNotifyUrl(String notifyUrl) {
		this.notifyUrl = notifyUrl;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getSpecCardNo() {
		return specCardNo;
	}
	public void setSpecCardNo(String specCardNo) {
		this.specCardNo = specCardNo;
	}
	public String getSpecName() {
		return specName;
	}
	public void setSpecName(String specName) {
		this.specName = specName;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getExpireTime() {
		return expireTime;
	}
	public void setExpireTime(String expireTime) {
		this.expireTime = expireTime;
	}
	public String getMerchant() {
		return merchant;
	}
	public void setMerchant(String merchant) {
		this.merchant = merchant;
	}
	public String getSpecId() {
		return specId;
	}
	public void setSpecId(String specId) {
		this.specId = specId;
	}
	public String getOrderType() {
		return orderType;
	}
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
	public String getIndustryCategoryCode() {
		return industryCategoryCode;
	}
	public void setIndustryCategoryCode(String industryCategoryCode) {
		this.industryCategoryCode = industryCategoryCode;
	}
	
	/**
	 * @return the vendorId
	 */
	public String getVendorId() {
		return vendorId;
	}
	/**
	 * @param vendorId the vendorId to set
	 */
	public void setVendorId(String vendorId) {
		this.vendorId = vendorId;
	}
	/**
	 * @return the goodsInfo
	 */
	public String getGoodsInfo() {
		return goodsInfo;
	}
	/**
	 * @param goodsInfo the goodsInfo to set
	 */
	public void setGoodsInfo(String goodsInfo) {
		this.goodsInfo = goodsInfo;
	}
	/**
	 * @return the orderGoodsNum
	 */
	public String getOrderGoodsNum() {
		return orderGoodsNum;
	}
	/**
	 * @param orderGoodsNum the orderGoodsNum to set
	 */
	public void setOrderGoodsNum(String orderGoodsNum) {
		this.orderGoodsNum = orderGoodsNum;
	}
	/**
	 * @return the receiverInfo
	 */
	public String getReceiverInfo() {
		return receiverInfo;
	}
	/**
	 * @param receiverInfo the receiverInfo to set
	 */
	public void setReceiverInfo(String receiverInfo) {
		this.receiverInfo = receiverInfo;
	}
	/**
	 * @return the termInfo
	 */
	public String getTermInfo() {
		return termInfo;
	}
	/**
	 * @param termInfo the termInfo to set
	 */
	public void setTermInfo(String termInfo) {
		this.termInfo = termInfo;
	}

	public String getCert() {
		return cert;
	}
	public void setCert(String cert) {
		this.cert = cert;
	}
	/**
	 * @return the tradeType
	 */
	public String getTradeType() {
		return tradeType;
	}
	/**
	 * @param tradeType the tradeType to set
	 */
	public void setTradeType(String tradeType) {
		this.tradeType = tradeType;
	}
	public String getPayMerchant() {
		return payMerchant;
	}
	public void setPayMerchant(String payMerchant) {
		this.payMerchant = payMerchant;
	}
	public String getPayChannel() {
		return payChannel;
	}
	public void setPayChannel(String payChannel) {
		this.payChannel = payChannel;
	}
	public String getRiskInfo() {
		return riskInfo;
	}
	public void setRiskInfo(String riskInfo) {
		this.riskInfo = riskInfo;
	}

	@Override
	public String toString() {
		return "BasePayOrderInfo [version=" + version + ", sign=" + sign + ", merchant=" + merchant + ", device="
				+ device + ", tradeNum=" + tradeNum + ", tradeName=" + tradeName + ", tradeDesc=" + tradeDesc
				+ ", tradeTime=" + tradeTime + ", amount=" + amount + ", currency=" + currency + ", note=" + note
				+ ", callbackUrl=" + callbackUrl + ", notifyUrl=" + notifyUrl + ", ip=" + ip + ", specCardNo="
				+ specCardNo + ", specId=" + specId + ", specName=" + specName + ", payChannel=" + payChannel
				+ ", userType=" + userType + ", userId=" + userId + ", expireTime=" + expireTime + ", orderType="
				+ orderType + ", industryCategoryCode=" + industryCategoryCode + ", payMerchant=" + payMerchant
				+ ", vendorId=" + vendorId + ", goodsInfo=" + goodsInfo + ", orderGoodsNum=" + orderGoodsNum
				+ ", receiverInfo=" + receiverInfo + ", termInfo=" + termInfo + ", cert=" + cert + ", tradeType="
				+ tradeType + ", riskInfo=" + riskInfo + "]";
	}
	
	
}
