package org.cat.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/member/*")
public class LoginController {

	@GetMapping("login")
	public void list() {
		
	}

	
	@PostMapping("/login")
	public String loginPost(String id, String pw, Model model, boolean remember) {
		
		log.info("login" + id);
		
		model.addAttribute("member", id);
		model.addAttribute("remember", remember);
		
		return "redirect:/";
	}
	
	
}
