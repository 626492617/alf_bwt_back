package com.alf.highest.personal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alf.highest.personal.pojo.BwtConnectorTemplatePrice;

@Controller
public class PersonalTemplateController {
	@RequestMapping("personalTemplatePage")
	public String personalTemplatePage() {
		return "/personaloperation/template";
	}
	/**
	 * 添加模板价格
	 * @param bctp
	 * @return
	 */
	public String addTemplateAddress(BwtConnectorTemplatePrice bctp) {
		
		return null;
	}
}
