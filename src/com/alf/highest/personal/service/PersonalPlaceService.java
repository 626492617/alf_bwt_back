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
	public String addPrsonalAddress(BwtConnectorAddress ba) throws Exception;
	/**
	 * 查询所有人的地址 管理区域
	 * @param page
	 * @param rows
	 * @return
	 */
	public EasyUIDataPage selectAllPrsonalRegion(Integer page,Integer rows,Integer personalid);

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
}
