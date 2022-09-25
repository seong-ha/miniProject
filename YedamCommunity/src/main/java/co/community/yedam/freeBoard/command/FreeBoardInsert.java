package co.community.yedam.freeBoard.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.freeBoard.service.FreeBoardService;
import co.community.yedam.freeBoard.service.FreeBoardServiceImpl;
import co.community.yedam.freeBoard.service.FreeBoardVO;

public class FreeBoardInsert implements Command {
	private String saveFolder = "C:\\fileUploadTest"; // 실제 파일을 저장할 공간
	private String charactSet = "utf-8"; // 전송되는 문자열 한글깨짐 방지(문자열 인코딩타입)
	private int maxSize = 1024 * 1024 * 1024; // 업로드할 파일 최대 사이즈

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		FreeBoardService dao = new FreeBoardServiceImpl();
		FreeBoardVO vo = new FreeBoardVO();
		int n = 0;
		
		// 파일 처리.
		String fileName = "";
		String originalFileName = "";

		vo.setFreeBoardId(Integer.valueOf(request.getParameter("freeBoardId")));
		vo.setFreeBoardTitle(request.getParameter("freeBoardTitle"));
		vo.setFreeBoardSubject(request.getParameter("freeBoardSubject"));
		vo.setFreeBoardDate(Date.valueOf(request.getParameter("freeBoardDate")));
		vo.setFreeBoardAttech(request.getParameter("freeBoardAttech"));
		vo.setFreeBoardAttechDir(request.getParameter("freeBoardAttechDir"));
		vo.setFreeBoardHit(request.getParameter("freeBoardHit"));
		vo.setFreeBoardLike(Integer.valueOf(request.getParameter("freeBoardLike")));
		vo.setMemberId(request.getParameter("memberId"));

		n = dao.freeBoardInsert(vo);

		String viewPage = "main/freeBoard/freeBoardError";

		if (n != 0) {
			viewPage = "freeBoardSelectList.do";
		} else {
			request.setAttribute("message", "게시글 등록에 실패하였습니다.");
		}

		return viewPage;
	}

}
