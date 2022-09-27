package co.community.yedam.foodInfo.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.foodInfo.service.foodInfoService;
import co.community.yedam.foodInfo.service.foodInfoServiceImpl;
import co.community.yedam.foodInfo.service.foodInfoVO;

public class foodInfoSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		foodInfoService dao = new foodInfoServiceImpl();
		foodInfoVO vo = new foodInfoVO();
		vo.setInfoId(Integer.valueOf(request.getParameter("id")));
		System.out.println(request.getParameter("questionsId"));
		vo = dao.foodInfoSelect(vo);
		
		if(vo != null) {
			request.setAttribute("vo", vo);
		}
		return "main/info/infoSelect";
	}

}
