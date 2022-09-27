package co.community.yedam.foodInfo.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.community.yedam.common.Command;
import co.community.yedam.foodInfo.service.foodInfoService;
import co.community.yedam.foodInfo.service.foodInfoServiceImpl;
import co.community.yedam.foodInfo.service.foodInfoVO;

public class FoodInfoInsert implements Command {
	private String saveFolder = "C:\\Dev\\workspace\\YedamCommunity0\\src\\main\\webapp\\fileUpload";
	private String charactSet = "utf-8"; //전송되는 문자열 엔코딩타입
	private int maxSize = 1024*1024*1024;  //파일 최대사이즈

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String viewPage = "main/info/infoError";
		foodInfoService dao = new foodInfoServiceImpl();
		foodInfoVO vo = new foodInfoVO();
		HttpSession session = request.getSession();
		String filename="";
		String originalFileName="";
		try {
			MultipartRequest multi =
					new MultipartRequest(request, saveFolder, maxSize, charactSet, new DefaultFileRenamePolicy());
			filename = multi.getFilesystemName("ufile"); //물리적 위치에 파일저장
			
		vo.setInfoName(multi.getParameter("infoName"));
		vo.setInfoTag(multi.getParameter("infoTag"));
		vo.setInfoDetail(multi.getParameter("infoDetail"));
		vo.setInfoAddr(multi.getParameter("infoAddr"));
		vo.setInfoTel(multi.getParameter("infoTel"));
		vo.setInfoTime(multi.getParameter("infoTime"));
//		vo.setInfoId(Integer.valueOf(multi.getParameter("infoId")));
		vo.setInfoAttach(originalFileName);
		vo.setInfoAttachDir(filename);  //물리적 파일명
		
		System.out.println(multi.getParameter("infoName"));
		System.out.println(multi.getParameter("infoTag"));
		} catch(IOException e) {
			e.printStackTrace();
		}
		
		
		
		int n = dao.foodInfoInsert(vo);
		System.out.println(n);
		if(n != 0) {
			viewPage="main/info/foodInfo";
		}else {
			request.setAttribute("message", "게시글 등록이 실패하였습니다!");
		}
		return viewPage;
	}

}
