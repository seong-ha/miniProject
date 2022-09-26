package co.community.yedam.freeBoard.service;

import java.util.List;

public interface FreeBoardMapper {
	List<FreeBoardVO> freeBoardSelectList();
	FreeBoardVO freeBoardSelect(FreeBoardVO vo);
	int freeBoardInsert(FreeBoardVO vo);
	int freeBoardDelete(FreeBoardVO vo);
	int freeBoardUpdate(FreeBoardVO vo);
	int freeBoardHitUpdate(FreeBoardVO vo);
}
