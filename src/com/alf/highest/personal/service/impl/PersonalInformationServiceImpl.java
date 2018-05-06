package com.alf.highest.personal.service.impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alf.highest.personal.service.PersonalInformationService;
import com.alf.highest.site.mapper.BwtPersonalMapper;
import com.alf.highest.site.pojo.BwtPersonal;
/**
 * 个人资料操作
 * @author Ping
 *
 */
@Service
public class PersonalInformationServiceImpl implements PersonalInformationService {
	@Autowired
	private BwtPersonalMapper bwtPersonalMapper;
	/**
	 * 查看个人资料
	 * @param personalid
	 * @return
	 */
	public BwtPersonal selectByPersonalidUpdatap(Integer personalid){
		
		return bwtPersonalMapper.selectByPrimaryKey(personalid);
		
	}
	/**
	 * 修改个人资料
	 * @param bwtPersonal
	 * @return
	 */
	public void updataByPersonalId(BwtPersonal  bwtPersonal){
		bwtPersonalMapper.updateByPrimaryKeySelective(bwtPersonal);
		
	}
	/**
	 * 修改个人密码
	 * @param Personalid
	 * @return
	 */
	public void updataByPersonalPwd(String pwd,HttpSession session){
		BwtPersonal bp = (BwtPersonal) session.getAttribute("user");
		bp.setPersonalpwd(pwd);
		bwtPersonalMapper.updateByPrimaryKey(bp);
		session.setAttribute("user", "");
	}
}
