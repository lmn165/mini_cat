package org.cat.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cafemap/*")
public class CafemapController {

	@GetMapping("cafemap")
	public void list() {
		
	}
	
}
