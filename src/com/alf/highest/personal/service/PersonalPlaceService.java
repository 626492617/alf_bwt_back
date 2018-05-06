package com.alf.highest.personal.service;

import com.alf.highest.personal.pojo.BwtConnectorAddress;
import com.alf.util.EasyUIDataPage;

public interface PersonalPlaceService {
	/**
	 * 添加个人站点
	 * @param ba
	 * @return
	 * @throws Exception 
	 */
	public String addPersonalAddress(BwtConnectorAddress ba) throws Exception;
	/**
	 * 查询所有人的地址 管理区域
	 * @param page
	 * @param rows
	 * @return
	 */
	public EasyUIDataPage selectAllPersonalRegion(Integer page,Integer rows,Integer personalid);

	/**
	 * 查询一条 接件人地址
	 * @param addressid
	 * @return
	 */
	public BwtConnectorAddress selectByAddressid(Integer addressid);
	/**
	 * 删除个人地址
	 * @param addressid
	 * @return
	 */
	public void deleteByAddressid(Integer[] addressid);
	/**
	 * 个人接件地址 下的所有模板
	 * @param page
	 * @param rows
	 * @param addressid 地址id
	 * @return
	 */
	public EasyUIDataPage selectTemplateAllData(Integer page,Integer rows,Integer addressid);
	/**
	 * 地点添加模板
	 * @param addressid 地点id
	 * @param templateprice 模板id
	 * @return
	 */
	public void addTemplateChoiceData(Integer addressid,Integer[] templateprice);
	/**
	 * 取消模板
	 * @param addressid 地点id
	 * @param templateprice 模板id
	 * @return
	 */
	public void delTemplateData(Integer addressid,Integer templateprice);
}
