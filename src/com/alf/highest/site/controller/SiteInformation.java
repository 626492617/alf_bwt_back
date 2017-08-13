package com.alf.highest.site.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class SiteInformation {
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
}
