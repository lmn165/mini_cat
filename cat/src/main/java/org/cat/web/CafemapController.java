package org.cat.web;

import org.cat.service.CafeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/cafemap/*")
public class CafemapController {

	@Autowired
	public CafeService service;
	
	@GetMapping("/cafemap")
	public void list(Model model) {
		log.info("cafe controller");
		int cno = 4;
		model.addAttribute("cafe", service.getList(cno));
		String cname = "cname";
		model.addAttribute("list", service.getNameList(cname));
		log.info(""+model.toString());
	}
}