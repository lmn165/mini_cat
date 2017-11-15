package org.cat.mappers;

import org.apache.ibatis.annotations.Param;
import org.cat.domain.Member;

public interface MemberMapper extends CRUDMapper<Member, Integer> {

	public void signUp(Member mb);
	public Integer login(@Param("id") String id, @Param("pw") String pw);
	
		
}
