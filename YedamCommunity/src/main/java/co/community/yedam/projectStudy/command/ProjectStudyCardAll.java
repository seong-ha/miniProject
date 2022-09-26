package co.community.yedam.projectStudy.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.projectStudy.service.ProjectStudyService;
import co.community.yedam.projectStudy.service.ProjectStudyServiceImpl;
import co.community.yedam.projectStudy.service.ProjectStudyVO;

public class ProjectStudyCardAll implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// ajax로 카드에 입력할 정보 가져오기
		ProjectStudyService dao = new ProjectStudyServiceImpl();
		List<ProjectStudyVO> lists = dao.projectStudySelectList();
		request.setAttribute("lists", lists);
		return "ajax:";
	}

}
