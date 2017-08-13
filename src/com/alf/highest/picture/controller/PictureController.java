package com.alf.highest.picture.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alf.highest.picture.service.PictureService;
@Controller
public class PictureController {
	@Autowired
	private PictureService pictureService;
	/**
	 * 上传图片   添加里的logo
	 * @param file
	 * @return
	 */
	@RequestMapping("nesw_UploadFile.do")
	@ResponseBody
	public String UploadFile(@RequestParam("imgFile") MultipartFile file,HttpSession session){
		
		try {
			return  pictureService.UploadFile(file, session);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		 
	}
}
