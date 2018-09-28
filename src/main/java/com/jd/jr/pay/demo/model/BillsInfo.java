package com.jd.jr.pay.demo.model;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 * @Author: jdpay
 * @Description:
 * @Date: 2018/8/2 16:04
 */
@XStreamAlias("billsInfo")
public class BillsInfo {

    /**
     * 期数
     * 3-3期
     * 6-6期
     * 12-12期
     * 24-24期
     */
    private String plan;

    /**
     * 费率
     */
    private String rate;

    /**
     * 总手续费
     */
    private String fee;

    /**
     * 每期费率
     */
    private String planFee;

    /**
     * 首期付款
     */
    private String firstPay;

    /**
     * 非首期付款
     */
    private String laterPay;

    /**
     * 付款总金额
     */
    private String total;

    public String getPlan() {
        return plan;
    }

    public void setPlan(String plan) {
        this.plan = plan;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee;
    }

    public String getPlanFee() {
        return planFee;
    }

    public void setPlanFee(String planFee) {
        this.planFee = planFee;
    }

    public String getFirstPay() {
        return firstPay;
    }

    public void setFirstPay(String firstPay) {
        this.firstPay = firstPay;
    }

    public String getLaterPay() {
        return laterPay;
    }

    public void setLaterPay(String laterPay) {
        this.laterPay = laterPay;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }
}
