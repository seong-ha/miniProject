package co.community.yedam.notice.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.noticeBoard.Service.NoticeBoardService;
import co.community.yedam.noticeBoard.Service.NoticeBoardServiceImpl;
import co.community.yedam.noticeBoard.Service.NoticeBoardVO;

public class NoticeBoardDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeBoardService dao = new NoticeBoardServiceImpl();
		NoticeBoardVO vo = new NoticeBoardVO();
		vo.setNoticeBoardId(Integer.valueOf(request.getParameter("id")));
		
		String viewPage = "notice/noticeError";
		
		int result = dao.noticeBoardDelete(vo);
		if (result != 0) {
			viewPage = "noticeSelectList.do";
		} else {
			request.setAttribute("message", "게시글 삭제에 실패했습니다.");
		}

		return viewPage;
	}

}
