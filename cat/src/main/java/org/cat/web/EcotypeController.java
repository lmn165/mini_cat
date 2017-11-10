package org.cat.web;

import org.cat.service.GalleryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ecotype/*")
public class EcotypeController {

	@Autowired
	GalleryService service;
	
	@Autowired
//	EcoCriteria cri;
	
	@GetMapping("gallery")
	public void list(Model model) {
		
//		model.addAttribute("list", service.getList());
//		model.addAttribute("criteria", 10);
		
	}
	
	@GetMapping("detail")
	public void get() {
		
	}
	
}
