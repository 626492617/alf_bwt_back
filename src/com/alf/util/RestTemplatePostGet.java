package com.alf.util;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.client.RestTemplate;

@Configuration
@Order(999)
public class RestTemplatePostGet {
	
	@Bean
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}
}
