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

public class NoticeBoardEdit implements Command {

	private String saveFolder = "C:\\fileUploadTest"; // 실제 파일을 저장할 공간
	private String charactSet = "utf-8"; // 전송되는 문자열 한글깨짐 방지(문자열 인코딩타입)
	private int maxSize = 1024 * 1024 * 1024; // 업로드할 파일 최대 사이즈

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String viewPage = "main/noticeBoard/noticeError";
		NoticeBoardService dao = new NoticeBoardServiceImpl();
		NoticeBoardVO vo = new NoticeBoardVO();

		try {
			MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, charactSet,
					new DefaultFileRenamePolicy());
			String fileName = multi.getFilesystemName("file");
			String OriginalFileName = multi.getOriginalFileName(fileName);

			vo.setNoticeBoardId(Integer.valueOf(multi.getParameter("noticeBoardId")));
			vo.setNoticeBoardDate(Date.valueOf(multi.getParameter("noticeBoardDate")));
			vo.setNoticeBoardTitle(multi.getParameter("noticeBoardTitle"));
			vo.setNoticeBoardSubject(multi.getParameter("noticeBoardSubject"));

			vo.setNoticeBoardAttech(OriginalFileName);
			vo.setNoticeBoardAttechDir(saveFolder + File.separator + fileName);

		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("id: " + vo.getNoticeBoardId());
		System.out.println("date: " + vo.getNoticeBoardDate());
		System.out.println("title: " + vo.getNoticeBoardTitle());
		System.out.println("subject: " + vo.getNoticeBoardSubject());
		System.out.println("attech: " + vo.getNoticeBoardAttech());
		System.out.println("directory: " + vo.getNoticeBoardAttechDir());

		int result = dao.noticeBoardUpdate(vo);

		if (result != 0) {
			NoticeBoardVO resultVO = dao.noticeBoardSelect(vo);
			request.setAttribute("vo", resultVO);
			viewPage = "main/noticeBoard/noticeBoardSelect"; // 수정 완료시 목록으로 돌아감
		} else {
			request.setAttribute("message", "게시글 수정에 실패했습니다.");
		}

		return viewPage;
	}

}
