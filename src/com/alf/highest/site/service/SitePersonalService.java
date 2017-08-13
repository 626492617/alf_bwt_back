package com.alf.highest.site.service;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alf.highest.site.pojo.BwtPersonal;
import com.alf.util.EasyUIDataPage;

public interface SitePersonalService {
	/**
	 * 批量添加员工
	 * @param siteid
	 * @param amount
	 * @return
	 */
	public void addProportionPersonal(Integer siteid,Integer amount);
	/**
	 * 查询所有员工
	 * @param bp
	 * @param page
	 * @param rows
	 * @return
	 */
	public EasyUIDataPage selectAllPersonalBySiteid(BwtPersonal bp,Integer page, Integer rows);
	/**
	 * 查看个人
	 * @param personalid
	 * @return
	 */
	public BwtPersonal selectByPersonalid(Integer personalid);
	/**
	 * 删除个人
	 * @return
	 */
	public void deleteByPersonalid(Integer[] personalid);
}
