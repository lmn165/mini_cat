package org.cat.service;

import java.util.List;

import org.cat.domain.Reply;

public interface ReplyService {
	
	public void registReply(Reply reply);

	public List<Reply> getList(Long eno);
	
	public void remove(Long rno);
	
	public void modify(Reply reply);
	
	/*
	public Reply get(long rno);
	*/
}
