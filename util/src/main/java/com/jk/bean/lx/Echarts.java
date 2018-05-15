/** 
 * <pre>项目名称:ssh-bams 
 * 文件名称:echarts.java 
 * 包名:com.jk.model 
 * 创建日期:2018年4月11日下午4:14:34 
 * Copyright (c) 2018, lxm_man@163.com All Rights Reserved.</pre> 
 */  
package com.jk.bean.lx;


import java.io.Serializable;

/**
 * <pre>项目名称：ssh-bams    
 * 类名称：echarts    
 * 类描述：    
 * 创建人：程涛 792043917@qq.com
 * 创建时间：2018年4月11日 下午4:14:34    
 * 修改人：程涛 792043917@qq.com   
 * 修改时间：2018年4月11日 下午4:14:34    
 * 修改备注：       
 * @version </pre>    
 */

public class  Echarts {

	private  Integer id;
	private  String name;
	private  Double y;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getY() {
		return y;
	}

	public void setY(Double y) {
		this.y = y;
	}

	@Override
	public String toString() {
		return "Echarts{" +
				"id=" + id +
				", name='" + name + '\'' +
				", y=" + y +
				'}';
	}
}
