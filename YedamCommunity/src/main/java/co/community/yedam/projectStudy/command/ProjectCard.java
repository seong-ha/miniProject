package co.community.yedam.projectStudy.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.projectStudy.service.ProjectStudyService;
import co.community.yedam.projectStudy.service.ProjectStudyServiceImpl;

public class ProjectCard implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 프로젝트 모집건만 필터링해서 가져오기
		ProjectStudyService dao = new ProjectStudyServiceImpl();
		
		return null;
	}

}
