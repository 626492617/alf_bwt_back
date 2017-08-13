package com.alf.highest.operation.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alf.highest.login.pojo.BwtCompany;
import com.alf.highest.operation.service.OperationSiteService;
import com.alf.highest.operation.vo.BwtSiteVo;
import com.alf.highest.operation.vo.LinkageDown;
import com.alf.util.EasyUIDataPage;
import com.alf.util.JsonUtils;

@Controller
public class OperationSiteController {
	@Autowired
	private OperationSiteService operationSiteService;
	/**
	 * 跳转站点操作
	 * @return
	 */
	@RequestMapping("pageOperationSite")
	public String pageOperationSite(Model model,HttpSession session){
		BwtCompany compant = (BwtCompany) session.getAttribute("user");
		model.addAttribute("companyid", compant.getCompanyid());
		return "/site/site";
	}
	/**
	 * 查询城市 省份 地区  传过来的是 父级id
	 * @param parentid
	 * @return
	 */
	@RequestMapping("selectAllLinkage")
	@ResponseBody
	public List<LinkageDown> selectAllLinkage(Integer parentid){
		return operationSiteService.selectAllLinkage(parentid);
		
	}
	/**
	 * 集团批量添加站点
	 * @param vo
	 * @return
	 */
	@RequestMapping("addProportionSite")
	@ResponseBody
	public String addProportionSite(BwtSiteVo vo){
		try {
			operationSiteService.addProportionSite(vo);
		} catch (Exception e) {
			return "0";
		}
		return "1";
	}
	/**
	 * 集团下的站点
	 * @param vo
	 * @param page
	 * @param rows
	 * @return
	 */
	@RequestMapping("selectAllSiteByCompanyid")
	@ResponseBody
	public EasyUIDataPage selectAllSiteByCompanyid(BwtSiteVo vo,@RequestParam(defaultValue = "1") Integer page, Integer rows){
		return operationSiteService.selectAllSiteByCompanyid(vo, page, rows);
		
	}
	/**
	 * 修改站点前的数据回显
	 * @param vo
	 * @return
	 */
	@RequestMapping(value="selectBySiteidUpdatap",produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String selectBySiteidUpdatap(BwtSiteVo vo){
		return JsonUtils.objectToJson(operationSiteService.selectBySiteidUpdatap(vo));
	}
	/**
	 * 修改站点
	 * @param vo
	 * @return
	 */
	@RequestMapping("updataBySiteId")
	@ResponseBody
	public String updataBySiteId(BwtSiteVo vo){
		try {
			operationSiteService.updataBySiteId(vo);
		} catch (Exception e) {
			return "0";
		}
		return "1";
		
	}
	/**
	 * 删除站点
	 * @param siteid
	 * @return
	 */
	@RequestMapping("deleteBysSite")
	@ResponseBody
	public String deleteBysSite(Integer[] siteid){
		try {
			operationSiteService.deleteBysSite(siteid);
		} catch (Exception e) {
			return "0";
		}
		return "1";
	}
}
