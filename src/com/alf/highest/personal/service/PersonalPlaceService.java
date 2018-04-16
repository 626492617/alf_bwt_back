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
	public void addPrsonalAddress(BwtConnectorAddress ba) throws Exception;
	/**
	 * 查询所有人的地址 管理区域
	 * @param page
	 * @param rows
	 * @return
	 */
	public EasyUIDataPage selectAllPrsonalRegion(Integer page,Integer rows,Integer personalid);
}
