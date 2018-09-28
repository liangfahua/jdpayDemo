package com.jd.jr.pay.demo.model;

import com.jd.jr.pay.gate.signature.vo.JdPayBaseResponse;
import com.thoughtworks.xstream.annotations.XStreamAlias;

import java.util.List;

/**
 * @Author: jdpay
 * @Description:
 * @Date: 2018/8/2 15:57
 */
@XStreamAlias("jdpay")
public class BtStrategyResponse extends JdPayBaseResponse {

    /**
     * 交易流水  数字或字母
     */
    private String tradeNum;

    /**
     * 支付总金额
     */
    private List<BillsInfo> billsInfoList;

    public String getTradeNum() {
        return tradeNum;
    }

    public void setTradeNum(String tradeNum) {
        this.tradeNum = tradeNum;
    }

    public List<BillsInfo> getBillsInfoList() {
        return billsInfoList;
    }

    public void setBillsInfoList(List<BillsInfo> billsInfoList) {
        this.billsInfoList = billsInfoList;
    }
}
