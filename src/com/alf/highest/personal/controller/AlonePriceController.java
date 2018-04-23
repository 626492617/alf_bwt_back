package com.alf.highest.personal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alf.highest.personal.pojo.BwtConnectorAlonePrice;
import com.alf.highest.personal.service.AlonePriceService;
/**
 * 价格添加
 * @author Administrator
 *
 */
import com.alf.util.EasyUIDataPage;
@Controller
public class AlonePriceController {
	@Autowired
	private AlonePriceService AlonePriceService;
	/**
	 * 添加与修改
	 * @param bcap
	 * @return
	 */
	@RequestMapping("addIsUpdataAlonelPrice")
	@ResponseBody
	public String addIsUpdataAlonelPrice(BwtConnectorAlonePrice bcap) {
		try {
			AlonePriceService.addIsUpdataAlonelPrice(bcap);
		} catch (Exception e) {
			// TODO: handle exception.
			e.printStackTrace();
			return "0";
		}
		return "1";
		
	}
	/**
	 * 查询个人地址  价格管理
	 * @param page
	 * @param rows
	 * @param addressid
	 * @return
	 */
	@RequestMapping("selectAllAlonelPrice")
	@ResponseBody
	public EasyUIDataPage selectAllAlonelPrice(Integer page,Integer rows,Integer addressid) {
		return AlonePriceService.selectAllAlonelPrice(page, rows, addressid);
		
	}
	/**
	 * 修改个人地址价格
	 * @param aloneprice
	 * @return
	 */
	public String upDateAlonelPricePage(Integer aloneprice) {
		return null;
		
	}
}
