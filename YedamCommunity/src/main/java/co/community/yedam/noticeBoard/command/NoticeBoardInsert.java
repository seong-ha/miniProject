package co.community.yedam.noticeBoard.command;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.community.yedam.common.Command;
import co.community.yedam.noticeBoard.service.NoticeBoardService;
import co.community.yedam.noticeBoard.service.NoticeBoardServiceImpl;
import co.community.yedam.noticeBoard.service.NoticeBoardVO;

public class NoticeBoardInsert implements Command {
	private String saveFolder = "C:\\fileUploadTest"; // 실제 파일을 저장할 공간
	private String charactSet = "utf-8"; // 전송되는 문자열 한글깨짐 방지(문자열 인코딩타입)
	private int maxSize = 1024 * 1024 * 1024; // 업로드할 파일 최대 사이즈

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 등록
		NoticeBoardService dao = new NoticeBoardServiceImpl();
		NoticeBoardVO vo = new NoticeBoardVO();
		String viewPage = "notice/noticeBoardError";
		String filename = "";
		String originalFileName = "";
		try {

			MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, charactSet,
					new DefaultFileRenamePolicy());
			filename = multi.getFilesystemName("ufile");// 파일저장
			originalFileName = multi.getOriginalFileName("ufile");// 실제 파일명
			vo.setMemberID(Integer.valueOf("noticeBoardWriter"));
			vo.setNoticeboardDate(Date.valueOf(multi.getParameter("noticeBoardDate")));
			vo.setNoticeboardTitle(multi.getParameter("noticeBoardTitle"));
			vo.setNoticeboardSubject(multi.getParameter("noticeBoardSubject"));
			vo.setNoticeboardAttech(originalFileName);
			vo.setNoticeboardAttechDir(saveFolder + File.separator + filename);
		} catch (IOException e) {

			e.printStackTrace();
		}
		int n = dao.noticeBoardInsert(vo);
		if (n != 0) {
			viewPage = "noticeBoardSelectList.do";
		} else {
			request.setAttribute("message", "게시물 등록실패");
		}
		return viewPage;
	}

}