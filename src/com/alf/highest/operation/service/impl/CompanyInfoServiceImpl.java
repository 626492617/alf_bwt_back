package com.alf.highest.operation.service.impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alf.highest.login.mapper.BwtCompanyMapper;
import com.alf.highest.login.pojo.BwtCompany;
import com.alf.highest.operation.service.CompanyInfoService;
@Service
public class CompanyInfoServiceImpl implements CompanyInfoService{
	@Autowired
	private BwtCompanyMapper bwtCompanyMapper;
	/**
	 * 集团信息
	 * @param companyid
	 * @return
	 */
	public BwtCompany selectByCompanyUpdatap(Integer companyid){
		return bwtCompanyMapper.selectByPrimaryKey(companyid);
		
	}
	/**
	 * 修改集团信息
	 * @param bc
	 * @return
	 */
	public void updataByCompanyId(BwtCompany  bc){
		bc.setCompanyaccount(null);
		bc.setCompanypwd(null);
		bwtCompanyMapper.updateByPrimaryKeySelective(bc);
	}
	/**
	 * 集团修改密码
	 * @param pwd
	 * @param session
	 * @return
	 */
	public void updataByCompanyPwd(String pwd ,HttpSession session){
		BwtCompany bc = (BwtCompany) session.getAttribute("user");
		bc.setCompanypwd(pwd);
		bwtCompanyMapper.updateByPrimaryKeySelective(bc);
		session.setAttribute("user", "");
	}
}
