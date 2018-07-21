package com.alf.highest.operation.vo;

import com.alf.highest.operation.pojo.BwtSite;

public class BwtSiteVo extends BwtSite {
	private Integer amount;
	private String provincevo;
	private String cityvo;
	private String areavo;
	private String location;
	
	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public String getProvincevo() {
		return provincevo;
	}

	public void setProvincevo(String provincevo) {
		this.provincevo = provincevo;
	}

	public String getCityvo() {
		return cityvo;
	}

	public void setCityvo(String cityvo) {
		this.cityvo = cityvo;
	}

	public String getAreavo() {
		return areavo;
	}

	public void setAreavo(String areavo) {
		this.areavo = areavo;
	}
	
}
