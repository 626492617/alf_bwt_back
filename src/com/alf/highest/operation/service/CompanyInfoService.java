package com.alf.highest.operation.service;

import javax.servlet.http.HttpSession;

import com.alf.highest.login.pojo.BwtCompany;

public interface CompanyInfoService {
	/**
	 * 集团信息
	 * @param companyid
	 * @return
	 */
	public BwtCompany selectByCompanyUpdatap(Integer companyid);
	/**
	 * 修改集团信息
	 * @param bc
	 * @return
	 */
	public void updataByCompanyId(BwtCompany  bc);
	/**
	 * 集团修改密码
	 * @param pwd
	 * @param session
	 * @return
	 */
	public void updataByCompanyPwd(String pwd ,HttpSession session);
}
