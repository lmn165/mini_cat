package org.java.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ecotype/*")
public class EcotypeController {

	@GetMapping("gallery")
	public void list() {
		
	}
	
}
