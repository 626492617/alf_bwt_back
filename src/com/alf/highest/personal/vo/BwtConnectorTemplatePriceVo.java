package com.alf.highest.personal.vo;

import java.util.List;

public class BwtConnectorTemplatePriceVo {
	private String provincial;//中间表主键  字符串   ， 分割
	private List<String> province; //城市名称集合
	
	public List<String> getProvince() {
		return province;
	}

	public void setProvince(List<String> province) {
		this.province = province;
	}

	public String getProvincial() {
		return provincial;
	}

	public void setProvincial(String provincial) {
		this.provincial = provincial;
	}

	
}
