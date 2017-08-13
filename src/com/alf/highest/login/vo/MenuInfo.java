package com.alf.highest.login.vo;

import java.util.List;

import com.alf.highest.login.pojo.UserFunction;

public class MenuInfo {

	private Integer ID;
	private String  Name;
	private List<UserFunction>    func;
	
	
	public Integer getID() {
		return ID;
	}
	public void setID(Integer iD) {
		ID = iD;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public List<UserFunction> getFunc() {
		return func;
	}
	public void setFunc(List<UserFunction> func) {
		this.func = func;
	}
	
	
	
	
}
