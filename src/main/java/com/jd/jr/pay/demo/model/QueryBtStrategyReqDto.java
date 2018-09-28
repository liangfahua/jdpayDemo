package com.jd.jr.pay.demo.model;

import java.io.Serializable;

/**
 * @Author: jdpay
 * @Description:
 * @Date: 2018/8/2 15:42
 */
public class QueryBtStrategyReqDto implements Serializable {

    private String version="";
    private String merchantNum="";
    private String tradeNum="";
    private String amount="";

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getMerchantNum() {
        return merchantNum;
    }

    public void setMerchantNum(String merchantNum) {
        this.merchantNum = merchantNum;
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
}
