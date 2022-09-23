package co.community.yedam.notice.board.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.noticeBoard.Service.NoticeBoardService;
import co.community.yedam.noticeBoard.Service.NoticeBoardServiceImpl;
import co.community.yedam.noticeBoard.Service.NoticeBoardVO;

public class NoticeBoardSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
			// 공지글 전체 목록 보기
			NoticeBoardService dao = new NoticeBoardServiceImpl();
			List<NoticeBoardVO> list = new ArrayList<NoticeBoardVO>();
			list = dao.NoticeBoardSelectList();
			request.setAttribute("list", list);
			return "no:notice/noticeSelectList";
	}

}
