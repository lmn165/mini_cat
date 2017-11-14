package org.cat.web;

import org.cat.service.CafeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.java.Log;

@Log
@CrossOrigin(origins = "*")
@Controller
@RequestMapping("/cafemap/*")
public class CafemapController {

	@Autowired
	public CafeService service;
	
	@GetMapping("/cafemap/{cno}")
	public void list(@RequestParam(name="cno") int cno, Model model) {
		
		model.addAttribute("cafe", service.getList(cno));
		String cname = "cname";
		model.addAttribute("list", service.getNameList(cname));
		log.info(""+model.toString());
	}
	@GetMapping("/ajax")
	public void ajax(@RequestParam(name="cno") int cno, Model model) {
		log.info("ajax controller");
		model.addAttribute("cafe", service.getList(cno));
		log.info(""+model.toString());
	}
}