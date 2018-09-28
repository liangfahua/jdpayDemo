package com.jd.jr.pay.demo.model;

import java.io.Serializable;

/**
 * @Author: jdpay
 * @Description:
 * @Date: 2018/8/2 15:42
 */
public class QueryBtStrategyReqInner implements Serializable {

    private String version;
    private String merchant;
    private String tradeNum;
    private String amount;
    private  String sign;

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getMerchant() {
        return merchant;
    }

    public void setMerchant(String merchant) {
        this.merchant = merchant;
    }

    public String getTradeNum() {
        return tradeNum;
    }

    public void setTradeNum(String tradeNum) {
        this.tradeNum = tradeNum;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }
}
