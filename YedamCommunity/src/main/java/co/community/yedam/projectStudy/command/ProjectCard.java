package co.community.yedam.projectStudy.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.projectStudy.service.ProjectStudyService;
import co.community.yedam.projectStudy.service.ProjectStudyServiceImpl;
import co.community.yedam.projectStudy.service.ProjectStudyVO;

public class ProjectCard implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 프로젝트 모집건만 필터링해서 가져오기
		ProjectStudyService dao = new ProjectStudyServiceImpl();
		ProjectStudyVO projectStudyVO = new ProjectStudyVO();
		projectStudyVO.setProjectStudyType("프로젝트");
		
		List<ProjectStudyVO> list = dao.projectStudyFilteredList(projectStudyVO);
		request.setAttribute("list", list);
		
		return "main/projectStudy/projectCard"; // 프로젝트 필터링 checked jsp로
	}

}
