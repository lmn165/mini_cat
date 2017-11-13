package org.cat.mappers;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.cat.domain.Ecotype;
import org.junit.runners.Parameterized.Parameter;

public interface EcoDataMapper extends CRUDMapper<Ecotype, Integer> {
	
	public void regData(Ecotype eco);
	
	public String getTime();
	
	@Update("update tb_ecotype set econtent = #{econtent} where eno = #{eno}")
	public void updateData(@Param("eno")int i, @Param("econtent")String econtent);
	
}
