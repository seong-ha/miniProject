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
		
		return "projectStudy/projectStudy/projectStudy";
	}

}
