package org.mzd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PublicController {
	
	public PublicController(){
		
	}
	
	@RequestMapping(value="/view/{url}")
	public String Dispath(@PathVariable("url") String url){
		return url;
	}
}
