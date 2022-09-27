package co.community.yedam.questions.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class QuestionsEditForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 수정폼 호출
		questionsService dao = new questionsServiceImpl();
		questionsVO vo = new questionsVO();
		vo.setQuestionsId(Integer.valueOf(request.getParameter("id")));
		vo.setQuestionsTitle(request.getParameter("questionsTitle"));
		vo.setQuestionsContent(request.getParameter("questionsContent"));
		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("questionsTitle"));
		System.out.println(request.getParameter("questionsContent"));

		int n =dao.questionsUpdate(vo);
		System.out.println(vo);
		System.out.println(n);
		String viewPage="main/questions/questionsError";

		if(n != 0) {
			request.setAttribute("vo", vo);
			viewPage="questionsEditForm.do";
		}else {
			request.setAttribute("message", "게시글 수정 실패하였습니다.!");
		}
		
		return viewPage;
	}

}
