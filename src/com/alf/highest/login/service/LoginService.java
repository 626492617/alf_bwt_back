package com.alf.highest.login.service;

import java.util.List;

import com.alf.highest.login.pojo.BwtCompany;
import com.alf.highest.login.vo.BwtCompanyVo;
import com.alf.highest.login.vo.MenuInfo;
import com.alf.highest.operation.vo.BwtSiteVo;

public interface LoginService {
	/**
	 * 查找用户  判断用户名密码是否正确
	 * @return
	 */
	public BwtCompanyVo findUser(BwtCompanyVo vo);
	/**
	 * 加载左面的数据 功能菜单
	 * @param user
	 * @return
	 */
	public List<MenuInfo> loadmainjsp(Integer user);
	
	/**
	 *站点 判断用户名密码是否正确
	 * @return
	 */
	public BwtSiteVo siteUser(BwtSiteVo svo);
	/**
	 * 查询一个集团
	 * @param companyid
	 */
	public BwtCompany findByUser(Integer companyid);
}
