package org.cat.web;

import org.cat.domain.Member;
import org.cat.dto.Criteria;
import org.cat.service.LoginService;
import org.cat.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberService service;

	@Autowired
	private LoginService service1;
	
	@GetMapping("login")
	public void loginGet() {
		log.info("=======================================================================================================================================================================================================================================================================================================================================");
	}
	
	
	@PostMapping("login")
	public String loginPost(String id, String pw, Model model, boolean remember) {
		
		log.info("login : " + id);
		log.info("password : " + pw);
		
		Boolean result = service.read(id, pw);
		log.info("" + result);
		if(result) {
			model.addAttribute("member", id);
			model.addAttribute("result", "true");
			return "/member/login";
		}
		return "redirect:/member/login";
	}
	
	
	@GetMapping("memberReg")
	public void register(Criteria cri) {
	log.info("member Controller");
	}

	
	@PostMapping("memberReg")
	public String registerPost(Member member, Criteria cri, RedirectAttributes rttr) {

		log.info("aaaaa");
		log.info("" + member);
		
		service.register(member);
				
		rttr.addFlashAttribute("result", "success");
		rttr.addFlashAttribute("criteria", cri);
		return "redirect:/";
	}
	
	
}
