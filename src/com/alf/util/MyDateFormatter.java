package com.alf.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;
//Ω” ’string ∑µªÿDate
public class MyDateFormatter implements Converter<String, Date> {

	public Date convert(String strDate) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		SimpleDateFormat sdfs = new SimpleDateFormat("yyyy-MM-dd");
		Date utilDate = null;
		try {
			utilDate = sdf.parse(strDate);
			utilDate = sdfs.parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return utilDate;
	}

	

}
