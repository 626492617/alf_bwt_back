package com.alf.highest.personal.vo;

import java.util.List;

import com.alf.highest.operation.vo.LinkageDown;

public class BwtConnectorAlonePriceVo {
	private String provincial;  //传过来的 区域  用逗号分隔
	private List<String> province; //返回的区域名称
	private List<LinkageDown>  listDown;//修改时个人区域集合
	private Integer id ; //区域id
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public List<LinkageDown> getListDown() {
		return listDown;
	}

	public void setListDown(List<LinkageDown> listDown) {
		this.listDown = listDown;
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
