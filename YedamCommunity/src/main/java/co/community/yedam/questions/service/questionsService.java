package co.community.yedam.questions.service;

import java.util.List;


public interface questionsService {
	
	// 기본적으로 CRUD 5가지 기능(Read는 전체와 한 건) - 불필요한 것은 빼도 상관 없음.
	
	List<questionsVO> questionsSelectList();
	questionsVO questionsSelect(questionsVO vo);
	int questionsInsert(questionsVO vo);
	int questionsUpdate(questionsVO vo);
	int questionsDelete(questionsVO vo);
	List<questionsVO> questionsSearchList();
	
}
