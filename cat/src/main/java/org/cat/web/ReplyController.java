package org.cat.web;

import java.util.List;

import org.cat.domain.Reply;
import org.cat.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.java.Log;

@Log
@RestController
public class ReplyController {

	@Autowired
	ReplyService service;
	
	
	@GetMapping("/reply/show")
	public List<Reply> getList(@RequestParam("eno") Long eno){

//		System.out.println("게시판 번호 : "+eno);
		
		return service.getList(eno);
	}
	
	
	@PostMapping("/reply/regist")
	public void regist(@RequestParam("eno") Long eno, @RequestParam("rnick") String rnick, @RequestParam("rcontent") String rcontent) {
		Reply reply = new Reply();
		
//		log.info("con 들어옴");
		reply.setEno(eno);
		reply.setRnick(rnick);
		reply.setRcontent(rcontent);
//		System.out.println(rnick);

		service.registReply(reply);
		
//		log.info("con 나감");
	}
	
//	@RequestMapping(value = "/reply/del")
	@DeleteMapping("/reply/del/{rno}")
	public void delete(@PathVariable("rno") Long rno) {
		service.remove(rno);
	}

	@PostMapping("/reply/update")
	public void update(@RequestParam("rno") Long rno, @RequestParam("rcontent") String rcontent) {
		Reply reply = new Reply();
		
		reply.setRno(rno);
		reply.setRcontent(rcontent);
		
		service.modify(reply);
	}
	
}
