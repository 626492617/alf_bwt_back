package com.alf.highest.picture.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.alf.highest.picture.service.PictureService;
import com.alf.util.JsonUtils;
import com.alf.util.UploadFileResult;
@Service
public class PictureServiceImpl implements PictureService{
	/**
	 * 上传图片   添加里的logo
	 * @param file
	 * @return
	 * @throws IOException 
	 */
	public String UploadFile(MultipartFile file, HttpSession session) throws IOException{
		UploadFileResult uf= new UploadFileResult();
		String filename = file.getOriginalFilename();
		String  path=session.getServletContext().getRealPath("uploadfiles");
		String uuid=UUID.randomUUID().toString();
		byte[] originalFile = file.getBytes();
		String name = uuid+filename.substring(filename.lastIndexOf("."));
		File files = new File(path,name);
		FileUtils.writeByteArrayToFile(files, originalFile);
		String xiangmu = session.getServletContext().getContextPath();
		String ip = "http://192.168.3.122:8080";
		/*uf.setLargerUrl(ip+xiangmu+"/uploadfiles/"+name);
		uf.setSmallUrl(ip+xiangmu+"/uploadfiles/"+name);*/
		uf.setLargerUrl("uploadfiles/"+name);
		uf.setSmallUrl("uploadfiles/"+name);
		uf.setError("1");
		return JsonUtils.objectToJson(uf);
		
	}
}
