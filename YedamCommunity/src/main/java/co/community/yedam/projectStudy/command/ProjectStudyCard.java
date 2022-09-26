package co.community.yedam.projectStudy.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.projectStudy.service.ProjectStudyService;
import co.community.yedam.projectStudy.service.ProjectStudyServiceImpl;
import co.community.yedam.projectStudy.service.ProjectStudyVO;

public class ProjectStudyCard implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// ajax로 카드에 입력할 정보 가져오기
		System.out.println("커멘드로 왔어?");
		ProjectStudyService dao = new ProjectStudyServiceImpl();
		List<ProjectStudyVO> list = dao.projectStudySelectList();
		System.out.println(list);
		
		request.setAttribute("list", list);
		return "main/projectStudy/projectStudy";
		
		
		/*
		 * ajax로 해보려다 실패...
		 * 
		JsonArray arr = new JsonArray();
		for (ProjectStudyVO vo : list) {
			JsonObject obj = new JsonObject();
			obj.addProperty("projectStudyId", vo.getProjectStudyId());
			obj.addProperty("memberId", vo.getMemberId());
			obj.addProperty("projectStudyType", vo.getProjectStudyType());
			obj.addProperty("projectStudyonoffline", vo.getProjectStudyonoffline());
			obj.addProperty("projectStudyPersonNum", vo.getProjectStudyPersonNum());
			obj.addProperty("projectStudyStart", vo.getProjectStudyStart().toString());
			obj.addProperty("projectStudyTel", vo.getProjectStudyTel());
			obj.addProperty("projectStudyPeriod", vo.getProjectStudyPeriod());
			obj.addProperty("projectStudyLanguage", vo.getProjectStudyLanguage());
			obj.addProperty("projectStudyHit", vo.getProjectStudyHit());
			obj.addProperty("projectStudyTitle", vo.getProjectStudyTitle());
			obj.addProperty("projectStudySubject", vo.getProjectStudySubject());
			arr.add(obj);
		}

		Gson gson = new GsonBuilder().create(); // instance 생성.

		String json = gson.toJson(arr); // toJson메소드
		try {
			response.setContentType("text/json;charset=utf-8");
			response.setCharacterEncoding("utf-8");
			response.getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		} // 출력스트림으로 출력.
		
		return "ajax:pass";
		*/
		
		
	}

}
