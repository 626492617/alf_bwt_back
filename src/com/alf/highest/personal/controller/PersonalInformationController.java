package com.alf.highest.personal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alf.highest.personal.service.PersonalInformationService;
import com.alf.highest.site.pojo.BwtPersonal;
import com.alf.util.JsonUtils;

@Controller
public class PersonalInformationController {
	@Autowired
	private PersonalInformationService personalInformationService;
	
	@RequestMapping("personalInformationPage")
	public String personalInformationPage(){
		return "/personaloperation/personalInformation";
		
	}
	/**
	 * 查看个人资料
	 * @param personalid
	 * @return
	 */
	@RequestMapping(value = "selectByPersonalidUpdatap",produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String selectByPersonalidUpdatap(Integer personalid){
		return JsonUtils.objectToJson(personalInformationService.selectByPersonalidUpdatap(personalid));
		
	}
	/**
	 * 修改个人资料
	 * @param bwtPersonal
	 * @return
	 */
	@RequestMapping("updataByPersonalId")
	@ResponseBody
	public String updataByPersonalId(BwtPersonal  bwtPersonal ){
		System.out.println(12);
		try {
			personalInformationService.updataByPersonalId(bwtPersonal);
		} catch (Exception e) {
			e.printStackTrace();
			return "0";
		}
		return "1";
		
	}
}
