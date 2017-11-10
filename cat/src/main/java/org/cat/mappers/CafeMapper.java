package org.cat.mappers;

import org.apache.ibatis.annotations.Select;
import org.cat.domain.Cafe;

public interface CafeMapper extends CRUDMapper<Cafe, Integer> {
	
	@Select("select * from tb_cafe where cno = #{cno}")
	public Cafe getList(Integer cno);

}
 