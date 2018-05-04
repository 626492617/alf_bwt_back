package com.alf.highest.personal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alf.highest.personal.pojo.BwtConnectorTemplatePrice;
import com.alf.highest.personal.service.PersonalTemplateService;
import com.alf.util.EasyUIDataPage;

@Controller
public class PersonalTemplateController {
	@Autowired
	private PersonalTemplateService personalTemplateService;
	@RequestMapping("personalTemplatePage")
	public String personalTemplatePage() {
		return "/personaloperation/template";
	}
	/**
	 * 添加模板价格
	 * @param bctp
	 * @return
	 */
	@RequestMapping("addIsUpTemplateAddress")
	@ResponseBody
	public String addIsUpTemplateAddress(BwtConnectorTemplatePrice bctp) {
		try {
			personalTemplateService.addIsUpTemplateAddress(bctp);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "0";
		}
		return "1";
	}
	/**
	 * 查看所有模板
	 * @param templatetitle
	 * @return
	 */
	public EasyUIDataPage selectAllTemplatePrice(String templatetitle,Integer page,Integer rows){
		
		return null;
	}
}
