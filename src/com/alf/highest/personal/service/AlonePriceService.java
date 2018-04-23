package com.alf.highest.personal.service;

import com.alf.highest.personal.pojo.BwtConnectorAlonePrice;
import com.alf.highest.personal.pojo.bwtAloneMiddleArea;
import com.alf.util.EasyUIDataPage;

/**
 * 价格添加
 * @author Administrator
 *
 */
public interface AlonePriceService {
	/**
	 * 添加与修改
	 * @param bcap
	 * @return
	 */
	public void addIsUpdataAlonelPrice(BwtConnectorAlonePrice bcap);
	/**
	 * 查询个人地址  价格管理
	 * @param page
	 * @param rows
	 * @param addressid
	 * @return
	 */
	public EasyUIDataPage selectAllAlonelPrice(Integer page,Integer rows,Integer addressid);
	/**
	 * 修改个人地址价格
	 * @param aloneprice
	 * @return
	 */
	public BwtConnectorAlonePrice upDateAlonelPricePage(Integer aloneprice);
	/**
	 * 删除个人价格
	 * @param aloneprice
	 * @return
	 */
	public void deleteByAlonelPrice(Integer[] aloneprice);
}
