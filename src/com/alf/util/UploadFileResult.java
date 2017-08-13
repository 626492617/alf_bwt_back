package com.alf.util;
/**
 * 封装文件上传的结果集
 * @author lhao
 *
 */
public class UploadFileResult {
   
	private  String  error;
	private  String  largerUrl;
	private  String  smallUrl;
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}
	public String getLargerUrl() {
		return largerUrl;
	}
	public void setLargerUrl(String largerUrl) {
		this.largerUrl = largerUrl;
	}
	public String getSmallUrl() {
		return smallUrl;
	}
	public void setSmallUrl(String smallUrl) {
		this.smallUrl = smallUrl;
	}
	
	
	
	
}
