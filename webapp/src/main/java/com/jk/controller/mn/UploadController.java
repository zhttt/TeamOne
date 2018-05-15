package com.jk.controller.mn;

import javax.servlet.http.HttpServletRequest;

import com.jk.bean.mn.UploadFile;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;



@Controller
@RequestMapping("upload")
public class UploadController {
	@RequestMapping("uploadFile")
	@ResponseBody
	public String uploadFile(HttpServletRequest request,@RequestParam("imageFile")CommonsMultipartFile file) throws Exception{
		String uploadFile = UploadFile.uploadFile(request, file);
		return uploadFile;
	}
	
/*	@RequestMapping("uploadFile2")
	@ResponseBody
	public String uploadFile2(HttpServletRequest request,@RequestParam("imageFile2")CommonsMultipartFile file) throws Exception{
		String uploadFile2 = UploadFile.uploadFile(request, file);
		return uploadFile2;
	}*/
}
