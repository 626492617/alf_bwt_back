package com.alf.highest.personal.service;

import com.alf.highest.personal.pojo.BwtConnectorTemplatePrice;
/**
 * 价格模板操作
 * @author Administrator
 *
 */
public interface PersonalTemplateService {
	/**
	 * 添加模板价格
	 * @param bctp
	 * @return
	 */
	public void addTemplateAddress(BwtConnectorTemplatePrice bctp);
}
