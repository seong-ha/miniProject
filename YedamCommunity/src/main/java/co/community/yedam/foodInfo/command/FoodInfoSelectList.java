package co.community.yedam.foodInfo.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.foodInfo.service.foodInfoService;
import co.community.yedam.foodInfo.service.foodInfoServiceImpl;
import co.community.yedam.foodInfo.service.foodInfoVO;

public class FoodInfoSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		foodInfoService dao = new foodInfoServiceImpl();
		List<foodInfoVO> list = new ArrayList<foodInfoVO>();
		
		list = dao.foodInfoSelectList();
		request.setAttribute("list", list);
		
		System.out.println(list);
		
		
		return "main/info/foodInfo";
	}

}
