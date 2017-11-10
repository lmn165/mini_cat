package org.cat.mappers;

import java.util.List;

import org.cat.domain.Ecotype;

public interface GalleryMapper {
	
//	@Select("select * from tbl_board order by bno desc limit #{skip}, #{size}")
//	public List<Board> getList2(Criteria cri);
	
//	@Select("select * from tb_ecotype}")
	public List<Ecotype> getList();
	
}
