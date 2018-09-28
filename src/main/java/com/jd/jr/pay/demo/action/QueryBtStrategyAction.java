package com.jd.jr.pay.demo.action;

import com.jd.jr.pay.demo.model.*;
import com.jd.jr.pay.demo.util.CertUtil;
import com.jd.jr.pay.demo.util.HttpsClientUtil;
import com.jd.jr.pay.demo.util.PropertyUtils;
import com.jd.jr.pay.gate.signature.util.JdPayUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * 
 * @ClassName: QueryOrderAction
 * @Description: 交易查询-消费、退款
 * @author mythling
 * @date 2016年4月28日 上午10:41:09
 * @version V1.0
 */
@Controller
public class QueryBtStrategyAction {

	@RequestMapping(value = "/queryBtStrategyIndex.htm")
	public String queryBtStrategyIndex(HttpServletRequest httpServletRequest) {
		String merchantNum = PropertyUtils.getProperty("wepay.merchant.num");
		httpServletRequest.setAttribute("merchantNum", merchantNum);
		return "queryBtStrategyIndex";
	}

	/*
	 * @Author: jdpay
	 * @Description: 白条策略查询接口
	 * @params: * @param queryBtStrategyReqDto
	 * 	       * @param request
	 * @return: java.lang.String
	 * @Date: 2018/8/2 17:25
	 */
	@RequestMapping(value = "/queryBtStrategy.htm", method = RequestMethod.POST)
	public String paySign(QueryBtStrategyReqDto queryBtStrategyReqDto, HttpServletRequest httpServletRequest) {
		String deskey = PropertyUtils.getProperty("wepay.merchant.desKey");
		String priKey = PropertyUtils.getProperty("wepay.merchant.rsaPrivateKey");
		String pubKey = PropertyUtils.getProperty("wepay.jd.rsaPublicKey");

		QueryBtStrategyReqInner queryBtStrategyDTO = new QueryBtStrategyReqInner();
		queryBtStrategyDTO.setVersion(queryBtStrategyReqDto.getVersion());
		queryBtStrategyDTO.setMerchant(queryBtStrategyReqDto.getMerchantNum());
		queryBtStrategyDTO.setTradeNum(queryBtStrategyReqDto.getTradeNum());
		queryBtStrategyDTO.setAmount(queryBtStrategyReqDto.getAmount());

		String rsPage = "queryBtStrategyResult";
		try {
			String xml = JdPayUtil.genReqXml(queryBtStrategyDTO, priKey, deskey);
			System.out.println("queryBtStrategy xml:" + xml);
			String queryUrl = PropertyUtils.getProperty("wepay.server.queryBaiTiaoFQ.url");
			String rs = HttpsClientUtil.sendRequest(queryUrl, xml, "application/xml");
			System.out.println("result:" + rs);
            BtStrategyResponse btStrategyResponse = JdPayUtil.parseResp(pubKey, deskey, rs, BtStrategyResponse.class);
            System.out.println("BtStrategyResponse:" + btStrategyResponse);
            httpServletRequest.setAttribute("presp", btStrategyResponse);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rsPage;
	}




}
