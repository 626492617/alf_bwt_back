package com.alf.highest.site.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.alf.highest.site.service.SiteInformationService;
import com.alf.util.JsonUtils;
import com.alf.util.RestTemplatePostGet;
import com.alf.util.httpPostUrl;
/**
 * 站点查询地址 实现
 * @author Administrator
 *
 */
@Service
public class SiteInformationServiceImpl implements SiteInformationService {
	//地图接口   https://restapi.amap.com/v3/place/
	@Value(value="${MAP_INTERFACE_API}")
	private String MAP_INTERFACE_API;
	//高德地图 key
	@Value(value="${MAP_KEY}")
	private String MAP_KEY;
	@Autowired
	private RestTemplate restTemplate;
	/**
	 * 调用高德接口查询站点地址 还有代理站点
	 * @param addressPage 站点名称
	 * @param addressSearch  区级编号
	 * @return
	 */
	public String addressSiteSearch(String addressPage,Integer addressSearch) {
		String pathUrl = MAP_INTERFACE_API + "text";
		String data = "keywords="+addressPage+"&offset=100&page=1&key="+MAP_KEY+"&extensions=base";
		String result = "" ;
		//https://restapi.amap.com/v3/place/text?keywords=北京大学&city=beijing&offset=10&page=1&key=<用户的key>&extensions=all
		MultiValueMap<String, String> requestBody = new LinkedMultiValueMap<>();
		if(addressSearch != null && addressSearch > 0) {
			requestBody.add("city", String.valueOf(addressSearch));
		}
        requestBody.add("keywords",addressPage);
		requestBody.add("offset", "20");
		requestBody.add("page", "1");
		requestBody.add("key", MAP_KEY);
		requestBody.add("extensions", "base");
		//RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> responseEntity = restTemplate.postForEntity("https://restapi.amap.com/v3/place/text", requestBody, String.class);
        result = responseEntity.getBody();
		String pois = JsonUtils.jsonToData(result, "pois");
		System.out.println(pois);
		return pois;
	}
	
}
