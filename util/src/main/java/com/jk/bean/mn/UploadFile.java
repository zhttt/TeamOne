package com.jk.bean.mn;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/** 
* @author 作者 尚峰: 
* @version 创建时间：2018年1月29日 下午2:40:23 
* 类说明 
*/
public class UploadFile {

	public static String uploadFile(HttpServletRequest request,CommonsMultipartFile file) throws Exception{
		//获取文件的名称
		String filename=file.getOriginalFilename();
		//用UUID给原文件文件重命名
		String fileuuid=UUID.randomUUID().toString();
		//获取文件的后缀名
		String suffix=filename.substring(filename.lastIndexOf("."));
		//拼接 新文件名
		String newFilename=fileuuid+suffix;
		//获取项目的绝对路径将文件存储到服务器上
		//String realPath=request.getSession().getServletContext().getRealPath("/");
		//获取文件上传路径
		String realPath=getExcelUrl("realpath");
		File filemk=new File(realPath);
		
		if(!filemk.exists()){
			filemk.mkdirs();
		}
		try {
			file.transferTo(new File(filemk+"//"+newFilename));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		String httpurl=getExcelUrl("filepath");
		return httpurl+newFilename;
	}
	
	/**
	 * downFile(下载)   
	 * param imgname   要下载的文件名
	 * param request   
	 * return
	 * </pre>
	 * @throws Exception 
	 */
	public static ResponseEntity<byte[]> downFile(String imgname, HttpServletRequest request) throws Exception {

		// 获得绝对路径
		String relPath = getExcelUrl("realpath")+ "/" + imgname;

		// 设置下载的响应信息
		HttpHeaders httpHeaders = new HttpHeaders();

		// 设置下载的文件类型
		httpHeaders.setContentType(MediaType.APPLICATION_OCTET_STREAM);

		// 设置下的文件名
		httpHeaders.setContentDispositionFormData("attachment", imgname);

		// 将文件转为 二进制数组
		byte[] fileByte = null;
		try {
			fileByte = FileUtils.readFileToByteArray(new File(relPath));

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ResponseEntity<byte[]>(fileByte, httpHeaders, HttpStatus.CREATED);
	}
	
	 /**
     * 获得文件路径.
     * 
     * @return
     * @throws Exception
     */
    public static String getExcelUrl(String key) throws Exception {
        InputStream inputStream = null;
        String url = "";
        try {
            inputStream = UploadFile.class.getResourceAsStream(
                "/jdbc.properties");
            Properties p = new Properties();
            p.load(inputStream);
            url = p.getProperty(key);
        } catch (IOException io) {
            throw io;
        } finally {
            try {
                inputStream.close();
            } catch (Exception e) {
                throw e;
            }
        }
        return url;
    }
}
