package com.alf.highest.personal.service.impl;

import org.springframework.stereotype.Service;

import com.alf.highest.personal.pojo.BwtConnectorTemplatePrice;
import com.alf.highest.personal.service.PersonalTemplateService;
/**
 * 价格模板操作
 * @author Administrator
 *
 */
@Service
public class PersonalTemplateServiceImpl implements PersonalTemplateService {
	/**
	 * 添加模板价格
	 * @param bctp
	 * @return
	 */
	public void  addTemplateAddress(BwtConnectorTemplatePrice bctp) {
		
		if(bctp.getTemplateprice() != null && bctp.getTemplateprice() > 0) {
			
		}else {
			
		}
	}
}
