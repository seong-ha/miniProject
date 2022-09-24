package co.community.yedam.noticeBoard.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.noticeBoard.service.NoticeBoardService;
import co.community.yedam.noticeBoard.service.NoticeBoardServiceImpl;
import co.community.yedam.noticeBoard.service.NoticeBoardVO;

public class NoticeBoardDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeBoardService dao = new NoticeBoardServiceImpl();
		NoticeBoardVO vo = new NoticeBoardVO();
		vo.setNoticeboardId(Integer.valueOf(request.getParameter("id")));
		
		String viewPage = "noticeBoard/noticeBoardError";
		
		int result = dao.noticeBoardDelete(vo);
		if (result != 0) {
			viewPage = "noticeBoardSelectList.do";
		} else {
			request.setAttribute("message", "게시글 삭제에 실패했습니다.");
		}

		return viewPage;
	}

}
