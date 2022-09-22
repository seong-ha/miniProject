package co.community.yedam.freeBoard.service;

import java.util.List;

public interface FreeBoardService {
	List<FreeBoardVO> freeBoardSelectlist();
	FreeBoardVO freeBoardlist(FreeBoardVO vo);
	int freeBoardInsert(FreeBoardVO vo);
	int freeBoardDelete(FreeBoardVO vo);
	int freeBoardUpdate(FreeBoardVO vo);
}
