package co.community.yedam.notice.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.noticeBoard.Service.NoticeBoardService;
import co.community.yedam.noticeBoard.Service.NoticeBoardServiceImpl;
import co.community.yedam.noticeBoard.Service.NoticeBoardVO;

public class NoticeBoardSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 상세보기
		NoticeBoardService dao = new NoticeBoardServiceImpl();
		NoticeBoardVO vo = new NoticeBoardVO();
		vo.setNoticeBoardId(Integer.valueOf(request.getParameter("id")));

		NoticeBoardVO resultVO = dao.NoticeBoardSelect(vo);
		if (resultVO != null) {
			dao.noticeBoardDelete(resultVO);
			request.setAttribute("vo", resultVO);
		}
		return "notice/noticeSelect";
	}

}
