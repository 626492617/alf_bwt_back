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
	@RequestMapping("addIsUpdataAlonelPrice")
	@ResponseBody
	public String addIsUpdataAlonelPrice(BwtConnectorAlonePrice bcap) {
		try {
			alonePriceService.addIsUpdataAlonelPrice(bcap);
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
		return alonePriceService.selectAllAlonelPrice(page, rows, addressid);
		
	}
	/**
	 * 修改个人地址价格
	 * @param aloneprice
	 * @return
	 */
	@RequestMapping(value="upDateAlonelPricePage",produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String upDateAlonelPricePage(Integer aloneprice) {
		return JsonUtils.objectToJson(alonePriceService.upDateAlonelPricePage(aloneprice));
		
	}
	/**
	 * 删除个人价格
	 * @param aloneprice
	 * @return
	 */
	@RequestMapping("deleteByAlonelPrice")
	@ResponseBody
	public String deleteByAlonelPrice(Integer[] aloneprice) {
		try {
			alonePriceService.deleteByAlonelPrice(aloneprice);
		} catch (Exception e) {
			e.printStackTrace();
			return "0";
		}
		return "1";
		
	}
}
