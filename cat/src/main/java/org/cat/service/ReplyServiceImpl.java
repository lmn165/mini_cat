package org.cat.service;

import java.util.ArrayList;
import java.util.List;

import org.cat.domain.Reply;
import org.cat.mappers.ReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.java.Log;

@Log
@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyMapper mapper;
	
	@Override
	public void registReply(Reply reply) {
		log.info("service 들어옴");
		mapper.create(reply);

		log.info("service 나감");
	}

	@Override
	public List<Reply> getList(Long eno) {

		List<Reply> main = mapper.getList(eno);
		
		System.out.println("main 확인 : " +main);
		
		return main;
	}

	@Override
	public void remove(Long rno) {
		mapper.delete(rno);
		
	}

	@Override
	public void modify(Reply reply) {
		mapper.update(reply);
		
	}

}
