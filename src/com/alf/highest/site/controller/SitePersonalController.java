package com.alf.highest.site.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alf.highest.operation.pojo.BwtSite;
import com.alf.highest.site.pojo.BwtPersonal;
import com.alf.highest.site.service.SitePersonalService;
import com.alf.util.EasyUIDataPage;
import com.alf.util.JsonUtils;

@Controller
public class SitePersonalController {
	@Autowired
	private SitePersonalService sitePersonalService;
	/**
	 * 跳转页面
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("sitePersonalPage")
	public String sitePersonalPage(Model model,HttpSession session){
		BwtSite site = (BwtSite) session.getAttribute("user");
		model.addAttribute("site", site.getSiteid());
		return "/personal/personal";
	}
	/**
	 * 批量添加员工
	 * @param siteid
	 * @param amount
	 * @return
	 */
	@RequestMapping("addProportionPersonal")
	@ResponseBody
	public String addProportionPersonal(Integer siteid,Integer amount){
		try {
			sitePersonalService.addProportionPersonal(siteid, amount);
		} catch (Exception e) {
			e.printStackTrace();
			return "0";
		}
		return "1";
	}
	/**
	 * 查询所有员工
	 * @param bp
	 * @param page
	 * @param rows
	 * @return
	 */
	@RequestMapping("selectAllPersonalBySiteid")
	@ResponseBody
	public EasyUIDataPage selectAllPersonalBySiteid(BwtPersonal bp,@RequestParam(defaultValue = "1") Integer page, Integer rows){
		return sitePersonalService.selectAllPersonalBySiteid(bp, page, rows);
		
	}
	/**
	 * 查看个人
	 * @param personalid
	 * @return
	 */
	@RequestMapping(value="selectByPersonalid",produces=MediaType.TEXT_HTML_VALUE+";charset=utf-8;")
	@ResponseBody
	public String selectByPersonalid(Integer personalid){
		return JsonUtils.objectToJson(sitePersonalService.selectByPersonalid(personalid));
		
	}
	/**
	 * 删除个人
	 * @param personalid
	 * @return
	 */
	@RequestMapping("deleteByPersonalid")
	@ResponseBody
	public String deleteByPersonalid(Integer[] personalid){
		try {
			sitePersonalService.deleteByPersonalid(personalid);
		} catch (Exception e) {
			return "0";
		}
		return "1";
		
	}
}
