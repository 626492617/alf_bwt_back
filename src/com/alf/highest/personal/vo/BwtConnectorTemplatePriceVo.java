package com.alf.highest.personal.vo;

import java.util.List;

public class BwtConnectorTemplatePriceVo {
	private String provincial;//中间表主键  字符串   ， 分割
	private List<String> province; //城市名称集合
	private List<Integer> listId;//城市id
	
	public List<Integer> getListId() {
		return listId;
	}

	public void setListId(List<Integer> listId) {
		this.listId = listId;
	}

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
