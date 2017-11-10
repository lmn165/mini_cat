package org.cat.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.cat.domain.Cafe;

public interface CafeMapper extends CRUDMapper<Cafe, Integer> {
	
	@Select("select * from tb_cafe where cno = #{cno}")
	public Cafe getList(Integer cno);

	@Select("select cno,cname from mini_db.tb_cafe")
	public List<Cafe> getNameList(String cname);

}
 