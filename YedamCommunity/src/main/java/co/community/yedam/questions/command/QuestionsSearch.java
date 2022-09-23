package co.community.yedam.questions.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class QuestionsSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//검색 기능
		questionsService dao = new questionsServiceImpl();
		List<questionsVO> list = new ArrayList<questionsVO>();
		String keyField=request.getParameter("keyField");
		String keyWord=request.getParameter("keyWord");
		
		list = dao.questionsSearchList();
		request.setAttribute("list", list);	
		
		
		
		
		
		return "noTiles:questions/questionsSearch";
	}

}
