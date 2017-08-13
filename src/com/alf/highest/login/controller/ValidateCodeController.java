package com.alf.highest.login.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alf.util.RandomValidate;




/**
 * 验证码的生成
 * @author  lhao
 *
 */
@RequestMapping("loginmanager")
@Controller
public class ValidateCodeController {
    
	
	
	@RequestMapping("getvalidate")
	public void getValidate(HttpSession session, HttpServletResponse resp){
		
		try { 
		    BufferedImage buffImg=RandomValidate.getBufferedImage(session);

			// 禁止图像缓存。
			resp.setHeader("Pragma", "no-cache");
			resp.setHeader("Cache-Control", "no-cache");
			resp.setDateHeader("Expires", 0);

			resp.setContentType("image/jpeg");

			// 将图像输出到Servlet输出流中。
			 
			 ServletOutputStream sos = resp.getOutputStream();
				ImageIO.write(buffImg, "jpeg", sos);
				sos.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
	}
	
	
	
}
