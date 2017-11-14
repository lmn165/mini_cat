package org.cat.mappers;

import java.util.List;

import org.cat.domain.Reply;

public interface ReplyMapper extends CRUDMapper<Reply, Long> {
	
	public List<Reply> getList(Long eno);
	
	public List<Reply> getDate(Long eno);
	
}
