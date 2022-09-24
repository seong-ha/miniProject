package co.community.yedam.noticeBoard.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;

public class NoticeBoardSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
			// 공지글 전체 목록 보기
			return "main/notice/noticeBoardSelectList";
	}

}
