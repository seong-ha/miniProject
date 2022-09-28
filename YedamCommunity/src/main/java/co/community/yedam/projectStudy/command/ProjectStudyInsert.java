package co.community.yedam.projectStudy.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.community.yedam.common.Command;
import co.community.yedam.projectStudy.service.ProjectStudyService;
import co.community.yedam.projectStudy.service.ProjectStudyServiceImpl;
import co.community.yedam.projectStudy.service.ProjectStudyVO;

public class ProjectStudyInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 프로젝트스터디 글쓰기 form의 데이터 들고와서 insert
		
		ProjectStudyService dao = new ProjectStudyServiceImpl();
		ProjectStudyVO projectStudyVO = new ProjectStudyVO();
		
		HttpSession ss = request.getSession();
		projectStudyVO.setMemberId(ss.getAttribute("memberId").toString());
		projectStudyVO.setProjectStudyType(request.getParameter("projectStudyType"));
		projectStudyVO.setProjectStudyonoffline(request.getParameter("projectStudyonoffline"));
		projectStudyVO.setProjectStudyPersonNum(request.getParameter("projectStudyPersonNum"));
		projectStudyVO.setProjectStudyStartDate(Date.valueOf(request.getParameter("projectStudyStartDate")));
		projectStudyVO.setProjectStudyContact(request.getParameter("projectStudyContact"));
		projectStudyVO.setProjectStudyPeriod(request.getParameter("projectStudyPeriod"));
		projectStudyVO.setProjectStudyLanguage(request.getParameter("projectStudyLanguage"));
		projectStudyVO.setProjectStudyTitle(request.getParameter("projectStudyTitle"));
		projectStudyVO.setProjectStudySubject(request.getParameter("projectStudySubject"));
		
		int result = dao.projectStudyInsert(projectStudyVO);
		
		if (result == 0) {
			request.setAttribute("projectStudyInsertMessage", "모집글 등록에 실패했습니다.");
		}
		
		return "projectStudy.do";
	}

}
