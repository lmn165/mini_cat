package org.cat.web;

import org.cat.domain.Ecotype;
import org.cat.service.GalleryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/ecotype/*")
public class EcotypeController {

	@Autowired
	GalleryService service;
	
//	@Autowired
//	EcoCriteria cri;
	
	@GetMapping("gallery")
	public void list(Model model) {
		
		model.addAttribute("list", service.getList());
//		model.addAttribute("criteria", 10);
		
	}
	
	@GetMapping("detail/{eno}")
	public String get(@PathVariable("eno") int catCode, Model model) {
		model.addAttribute("info", service.get(catCode));
		
		return "/ecotype/detail";
	}
	/*public ResponseEntity<Ecotype> get(@PathVariable("eno") int catCode) {
		try {
			
			Ecotype eco = service.get(catCode);
			
			if(eco == null) {
				throw new Exception("");
			}
			
			return new ResponseEntity<Ecotype>(eco, HttpStatus.OK);

		} catch (Exception e) {
			return new ResponseEntity(HttpStatus.NOT_FOUND);
		}
	}*/
	
	@GetMapping("reply/{eno}")
	public String replyForm(@PathVariable("eno") int eno, Model model) {
//		System.out.println(eno);
		model.addAttribute("eno", eno);
		
		return "/ecotype/reply";
	}
	
}
