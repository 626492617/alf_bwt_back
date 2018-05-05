package com.alf.highest.personal.service;

import com.alf.highest.personal.pojo.BwtConnectorTemplatePrice;
import com.alf.util.EasyUIDataPage;
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
	public void addIsUpTemplateAddress(BwtConnectorTemplatePrice bctp);
	/**
	 * 查看所有模板
	 * @param templatetitle
	 * @return
	 */
	public EasyUIDataPage selectAllTemplatePrice(String templatetitle,Integer page,Integer rows);
}
