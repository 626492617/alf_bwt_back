package com.alf.highest.picture.service;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

public interface PictureService {
	/**
	 * 上传图片   添加里的logo
	 * @param file
	 * @return
	 * @throws IOException 
	 */
	public String UploadFile(MultipartFile file, HttpSession session) throws IOException;
}
