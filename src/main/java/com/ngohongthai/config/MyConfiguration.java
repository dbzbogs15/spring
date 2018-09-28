package com.ngohongthai.config;

import javax.servlet.ServletConfig;

import com.ckfinder.connector.configuration.Configuration;

public class MyConfiguration extends Configuration {

	public MyConfiguration(ServletConfig servletConfig) {
		super(servletConfig);
	}

	@Override
	protected Configuration createConfigurationInstance() {
		return new MyConfiguration(this.servletConf);
	}
	
	@Override
	public void init() throws Exception {
		super.init();
		this.baseURL = this.servletConf.getServletContext().getContextPath() + "/resources/";
		this.baseDir = "F:\\ReactJS\\news\\src\\main\\webapp\\resources\\";
//		this.baseDir = "../resources/";
	}

}
