package com.alf.highest.site.service;

public interface SiteInformationService {
	/**
	 * 调用高德接口查询站点地址 还有代理站点
	 * @param addressPage 站点名称
	 * @param addressSearch  区级编号
	 * @return
	 */
	public String addressSiteSearch(String addressPage,Integer addressSearch);
}
