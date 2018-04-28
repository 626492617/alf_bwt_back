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
import com.alf.util.JsonUtils;
@Controller
public class AlonePriceController {
	@Autowired
	private AlonePriceService alonePriceService;
	/**
	 * 添加与修改
	 * @param bcap
	 * @return
	 */
	@RequestMapping("addIsUpdataAlonePrice")
	@ResponseBody
	public String addIsUpdataAlonePrice(BwtConnectorAlonePrice bcap) {
		try {
			alonePriceService.addIsUpdataAlonePrice(bcap);
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
	@RequestMapping("selectAllAlonePrice")
	@ResponseBody
	public EasyUIDataPage selectAllAlonePrice(Integer page,Integer rows,Integer addressid) {
		return alonePriceService.selectAllAlonePrice(page, rows, addressid);
		
	}
	/**
	 * 修改个人地址价格
	 * @param aloneprice
	 * @return
	 */
	@RequestMapping(value="upDateAlonePricePage",produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String upDateAlonePricePage(Integer aloneprice) {
		return JsonUtils.objectToJson(alonePriceService.upDateAlonePricePage(aloneprice));
		
	}
	/**
	 * 删除个人价格
	 * @param aloneprice
	 * @return
	 */
	@RequestMapping("deleteByAlonePrice")
	@ResponseBody
	public String deleteByAlonePrice(Integer[] aloneprice) {
		try {
			alonePriceService.deleteByAlonePrice(aloneprice);
		} catch (Exception e) {
			e.printStackTrace();
			return "0";
		}
		return "1";
		
	}
}
