package org.cat.mappers;

import java.util.List;

import org.cat.domain.Ecotype;

public interface GalleryMapper {
	
//	@Select("select * from tbl_board order by bno desc limit #{skip}, #{size}")
//	public List<Board> getList2(Criteria cri);
	
//	전체 리스트 조회
	public List<Ecotype> getList();
	
}
