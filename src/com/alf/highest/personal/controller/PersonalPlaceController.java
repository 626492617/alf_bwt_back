package com.alf.highest.personal.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alf.highest.personal.pojo.BwtConnectorAddress;
import com.alf.highest.personal.service.PersonalPlaceService;
import com.alf.highest.site.pojo.BwtPersonal;
import com.alf.util.EasyUIDataPage;
import com.alf.util.JsonUtils;

/**
 * 个人地点操作  
 * @author Ping
 *
 */
@Controller
public class PersonalPlaceController {
	@Autowired
	private PersonalPlaceService personalPlaceService;
	/**
	 * 个人站点操作页面
	 * @return
	 */
	@RequestMapping("personalRegionPage")
	public String personalRegionPage() {
		return "/personaloperation/personal";
		
	}
	/**
	 * 添加个人站点
	 * @param ba
	 * @return
	 */
	@RequestMapping("addPersonalAddress")
	@ResponseBody
	public String addPersonalAddress(BwtConnectorAddress ba,HttpSession session) {
		BwtPersonal bp = (BwtPersonal) session.getAttribute("user");
		ba.setPersonalid(bp.getPersonalid());
		try {
			return personalPlaceService.addPersonalAddress(ba);
		} catch (Exception e) {
			e.printStackTrace();
			return "0";
		}
	}
	/**
	 * 查询所有人的地址 管理区域
	 * @param page
	 * @param rows
	 * @return
	 */
	@RequestMapping("selectAllPersonalRegion")
	@ResponseBody
	public EasyUIDataPage selectAllPersonalRegion(Integer page,Integer rows,HttpSession session) {
			BwtPersonal bp = (BwtPersonal) session.getAttribute("user");
		return personalPlaceService.selectAllPersonalRegion(page, rows, bp.getPersonalid());
	
		
	}
	/**
	 * 查询一条 接件人地址
	 * @param addressid
	 * @return
	 */
	@RequestMapping(value="selectByAddressid",produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String selectByAddressid(Integer addressid) {
		return JsonUtils.objectToJson(personalPlaceService.selectByAddressid(addressid));
		
	}
	/**
	 * 删除个人地址
	 * @param addressid
	 * @return
	 */
	@RequestMapping("deleteByAddressid")
	@ResponseBody
	public String deleteByAddressid(Integer[] addressid) {
		try {
			personalPlaceService.deleteByAddressid(addressid);
		} catch (Exception e) {
			return "0";
		}
		return "1";
	}
}
