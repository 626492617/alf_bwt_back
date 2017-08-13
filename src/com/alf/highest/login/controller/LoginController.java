package com.alf.highest.login.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.formula.functions.T;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alf.highest.login.pojo.BwtCompany;
import com.alf.highest.login.service.LoginService;
import com.alf.highest.login.vo.BwtCompanyVo;
import com.alf.highest.login.vo.MenuInfo;
import com.alf.highest.operation.vo.BwtSiteVo;
import com.alf.util.JsonUtils;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	/**
	 * 判断登录
	 * @return
	 */
	@RequestMapping(value="login",method=RequestMethod.POST)
	@ResponseBody
	public  String  login(String validatecode,HttpSession session,String sysNumber,String sysPwd, Integer logintype){
		
		//判断验证码是否正确
		String  validatecodeback =(String) session.getAttribute("validatecode");
		if(!validatecodeback.equalsIgnoreCase(validatecode)){
			return "-1";
		}
		boolean i = false;
		BwtCompanyVo bvo = new BwtCompanyVo();
		BwtSiteVo svo = new BwtSiteVo();
		switch (logintype) {
			case 1:
				//登录操作判断用户名密码书否正确
				bvo.setCompanyaccount(sysNumber);
				bvo.setCompanypwd(sysPwd);
				BwtCompanyVo user=loginService.findUser(bvo);
				if (!(user == null)) {
					session.setAttribute("user", user);
					session.setAttribute("logintype", logintype);
					if(user.getCompanyname() != null && user.getCompanyname().length() > 0)
						session.setAttribute("name", user.getCompanyname());
					else
						session.setAttribute("name", "小锋提醒您完善(集团)资料");
					i = true;
				}
				break;
			case 2:
				//登录操作判断用户名密码书否正确
				svo.setSiteaccount(sysNumber);
				svo.setSitepwd(sysPwd);
				BwtSiteVo user1=loginService.siteUser(svo);
				if (!(user1 == null)) {
					session.setAttribute("user", user1);
					session.setAttribute("logintype", logintype);
					if(user1.getCompanyid() != null && user1.getCompanyid() > 0){
						BwtCompany by = loginService.findByUser(user1.getCompanyid());
						if(by != null){
							if(by.getCompanyname() != null && by.getCompanyname().length() > 0)
								session.setAttribute("name", by.getCompanyname());
							else
								session.setAttribute("name", "小锋提醒您完善(集团)资料");
						}
					}else{
						if(user1.getSitename() != null && user1.getSitename().length() > 0)
							session.setAttribute("name", user1.getSitename());
						else
							session.setAttribute("name", "小锋提醒您完善(站点)资料");
					}
					i = true;
				}
				break;
			default:
				return "0";
		}
		//登录操作判断用户名密码书否正确
		/*vo.setCompanyaccount(sysNumber);
		vo.setCompanypwd(sysPwd);
		BwtCompanyVo user=loginService.findUser(vo);*/
		
		
		
		if(i){
			return "1";
		}else{
			return "0";
		}
	}
	/**
	 * 登录
	 * @return
	 */
	
	@RequestMapping("loadmain")
	public  String  login1(){
		return "/main/main";
	}
	
	
	/**
	 * 加载主页面的左边的数据
	 * @return
	 */
	@RequestMapping(value="loadleftaccordion",produces=MediaType.TEXT_HTML_VALUE+";charset=utf-8;")
	@ResponseBody
	public  String  loadmainjsp(HttpSession  session){
		Integer logintype = (Integer) session.getAttribute("logintype");
		Integer role = 0;
		if(logintype == 1){
			BwtCompanyVo user = (BwtCompanyVo) session.getAttribute("user");
			role = user.getCompanyrole();
		}else if(logintype == 2){
			BwtSiteVo user = (BwtSiteVo) session.getAttribute("user");
			role = user.getSiterole();
		}
		
		//根据用户加载用户的资源
		
		List<MenuInfo> miList =loginService.loadmainjsp(role);
		
		
		//List<MenuInfo> miList =mainService.getFunsAll();
		
		String str=JsonUtils.objectToJson(miList);
		
		return str;
	}
	@RequestMapping("out.do")
	@ResponseBody
	public String outlogin(HttpServletRequest req){
		req.getSession().setAttribute("user", "");
		return "ok";
	}
}
