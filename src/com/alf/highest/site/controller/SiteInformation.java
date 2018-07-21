package com.alf.highest.site.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alf.highest.site.service.SiteInformationService;

/**
 * 站点调用高德地图api操作
 * @author Administrator
 *
 */
@Controller
public class SiteInformation {
	@Autowired
	private SiteInformationService siteInformationService;
	/**
	 * 跳转站点信息
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("SiteInfoPage")
	public String SiteInfoPage(Model model,HttpSession session){
		return "/site/siteInformation";
	}
	/**
	 * 调用高德接口查询站点地址 还有代理站点
	 * @param addressPage 站点名称
	 * @param addressSearch 
	 * @return
	 */
	@RequestMapping(value = "addressSiteSearch",produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String addressSiteSearch(String addressPage,Integer addressSearch) {
		return siteInformationService.addressSiteSearch(addressPage, addressSearch);
	}
}
