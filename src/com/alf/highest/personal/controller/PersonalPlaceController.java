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
	@RequestMapping("prsonalRegionPage")
	public String prsonalRegionPage() {
		return "/personaloperation/personal";
		
	}
	/**
	 * 添加个人站点
	 * @param ba
	 * @return
	 */
	@RequestMapping("addPrsonalAddress")
	@ResponseBody
	public String addPrsonalAddress(BwtConnectorAddress ba,HttpSession session) {
		BwtPersonal bp = (BwtPersonal) session.getAttribute("user");
		ba.setPersonalid(bp.getPersonalid());
		try {
			personalPlaceService.addPrsonalAddress(ba);
		} catch (Exception e) {
			e.printStackTrace();
			return "0";
		}
		return "1";
	}
	/**
	 * 查询所有人的地址 管理区域
	 * @param page
	 * @param rows
	 * @return
	 */
	@RequestMapping("selectAllPrsonalRegion")
	@ResponseBody
	public EasyUIDataPage selectAllPrsonalRegion(Integer page,Integer rows,HttpSession session) {
			BwtPersonal bp = (BwtPersonal) session.getAttribute("user");
		return personalPlaceService.selectAllPrsonalRegion(page, rows, bp.getPersonalid());
	
		
	}
}
