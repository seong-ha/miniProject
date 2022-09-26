package co.community.yedam.web;



import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.Main;
import co.community.yedam.cafeInfo.command.InfoCafe;
import co.community.yedam.common.Command;
import co.community.yedam.community.command.Community;
import co.community.yedam.foodInfo.command.InfoFood;
import co.community.yedam.freeBoard.command.FreeBoard;
import co.community.yedam.freeBoard.command.FreeBoardDelete;
import co.community.yedam.freeBoard.command.FreeBoardEdit;
import co.community.yedam.freeBoard.command.FreeBoardEditForm;
import co.community.yedam.freeBoard.command.FreeBoardInsert;
import co.community.yedam.freeBoard.command.FreeBoardInsertForm;
import co.community.yedam.freeBoard.command.FreeBoardSelect;
import co.community.yedam.member.command.AjaxMemberIdCheck;
import co.community.yedam.member.command.MemberDelete;
import co.community.yedam.member.command.MemberJoin;
import co.community.yedam.member.command.MemberJoinForm;
import co.community.yedam.member.command.MemberLogin;
import co.community.yedam.member.command.MemberLoginForm;
import co.community.yedam.member.command.MemberLogout;
import co.community.yedam.member.command.MemberMyHome;
import co.community.yedam.member.command.MemberUpdate;
import co.community.yedam.noticeBoard.command.NoticeBoard;
import co.community.yedam.projectStudy.command.ProjectStudy;
import co.community.yedam.questions.command.AjaxQuestionsSearch;
import co.community.yedam.questions.command.QuestionsEditForm;
import co.community.yedam.questions.command.QuestionsInsert;
import co.community.yedam.questions.command.QuestionsSearchForm;
import co.community.yedam.questions.command.QuestionsSelect;
import co.community.yedam.questions.command.QuestionsSelectList;
import co.community.yedam.questions.command.QuestionsWriteForm;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// 실제 요청페이지와, 그에 대해 할당할 커멘드를 담아두는 저장소
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		map.put("/main.do", new Main());
		map.put("/memberLoginForm.do", new MemberLoginForm());
		map.put("/memberJoinForm.do", new MemberJoinForm());
		map.put("/community.do", new Community());
		map.put("/freeBoard.do", new FreeBoard());
		map.put("/questionsWriteForm.do", new QuestionsWriteForm());
		map.put("/questionsSelectList.do", new QuestionsSelectList());
		map.put("/questionsSelect.do", new QuestionsSelect());
		map.put("/questionsEditForm.do", new QuestionsEditForm());
		map.put("/questionsInsert.do", new QuestionsInsert());
		map.put("/questionsSearchForm.do", new QuestionsSearchForm());
		map.put("/AjaxQuestionsSearch.do", new AjaxQuestionsSearch());
		map.put("/projectStudy.do", new ProjectStudy());
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/memberJoin.do", new MemberJoin());
		map.put("/ajaxMemberIdCheck.do", new AjaxMemberIdCheck());
		map.put("/community.do", new Community());
		map.put("/noticeBoard.do", new NoticeBoard());
//		map.put("/noticeBoardWriteForm.do", new NoticeBoardWriteForm());
//		map.put("/noticeBoardInsert.do", new NoticeBoardInsert());
//		map.put("/noticeBoardSelect.do", new NoticeBoardSelect()); // 공지사항 상세보기
//		map.put("/noticevEditForm.do", new NoticeBoardEditForm()); // 상세보기에서 게시글 수정 폼으로
//		map.put("/noticeBoardEdit.do", new NoticeBoardEdit()); // 상세보기에서 게시글 수정
//		map.put("/noticeBoardDelete.do", new NoticeBoardDelete()); // 상세보기에서 게시글 삭제
		map.put("/freeBoardSelect.do", new FreeBoardSelect());
		map.put("/freeBoardInsertForm.do", new FreeBoardInsertForm());
		map.put("/memberLogout.do", new MemberLogout());
		map.put("/memberMyHome.do", new MemberMyHome());
		map.put("/memberUpdate.do", new MemberUpdate());
		map.put("/memberDelete.do", new MemberDelete());
		map.put("/freeBoardInsert.do", new FreeBoardInsert());
		map.put("/freeBoardDelete.do", new FreeBoardDelete());
		map.put("/infoFood.do", new InfoFood());
		map.put("/infoCafe.do", new InfoCafe());
		map.put("/freeBoardEditForm.do", new FreeBoardEditForm()); // 자유게시판 작성 글 수정폼 호출.
		map.put("/freeBoardEdit.do", new FreeBoardEdit()); // 자유게시판 작성 글 수정.
		
		
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		// 실제 요펑 페이지 분석
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());

		// 분석된 요청 페이지에 대해 할당된 커멘드에게 일 시킴.(DB까지 가서 결과물 가져옴)
		Command command = map.get(page);
		String viewPage = command.exec(request, response);

		// 커멘드가 가져온 결과를 바탕으로 해당하는 view를 찾아서 실행시켜서 요청에 대한 응답을 해준다. (view Resolver)
		if (!viewPage.endsWith(".do")) {

			if (viewPage.startsWith("ajax:")) { // ajax를 사용할때
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			} else {
				// tiles 적용 안 되도록할 때
				if (viewPage.startsWith("noTiles:")) {
					viewPage = "/WEB-INF/views/" + viewPage.substring(8) + ".jsp";
				} else { // tiles 적용 되도록할 때
					viewPage = viewPage + ".tiles"; // tiles layout 사용
				}

				// RequestDipatcher의 forward로 쏴줘야 앞단에 뿌려줄 수 있다.
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			}
		} else {
			response.sendRedirect(viewPage); // *.do return -> 다시 Controller로 요청 들어감.(뺑뺑이)
		}
	}

}
