package com.alf.highest.operation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alf.highest.login.pojo.BwtCompany;
import com.alf.highest.operation.service.CompanyInfoService;
import com.alf.util.JsonUtils;

@Controller
public class CompanyInfoController {
	@Autowired
	private CompanyInfoService companyInfoService;
	@RequestMapping("CompanyInfoPage")
	public String CompanyInfoPage(){
		return "/company/CompanyInformation";
	}
	/**
	 * 集团信息
	 * @param companyid
	 * @return
	 */
	@RequestMapping(value = "selectByCompanyUpdatap",produces=MediaType.TEXT_HTML_VALUE+";charset=utf-8;")
	@ResponseBody
	public String selectByCompanyUpdatap(Integer companyid){
		return JsonUtils.objectToJson(companyInfoService.selectByCompanyUpdatap(companyid));
	}
	/**
	 * 修改集团信息
	 * @param bc
	 * @return
	 */
	@RequestMapping("updataByCompanyId")
	@ResponseBody
	public String updataByCompanyId(BwtCompany  bc){
		try {
			companyInfoService.updataByCompanyId(bc);
		} catch (Exception e) {
			// TODO: handle exception
			return "0";
		}
		return "1";
		
	}
	/**
	 * 集团修改密码
	 * @param pwd
	 * @param session
	 * @return
	 */
	@RequestMapping("updataByCompanyPwd")
	@ResponseBody
	public String updataByCompanyPwd(String pwd ,HttpSession session){
		try {
			companyInfoService.updataByCompanyPwd(pwd, session);
		} catch (Exception e) {
			// TODO: handle exception
			return "0";
		}
		return "1";
		
	}
}
