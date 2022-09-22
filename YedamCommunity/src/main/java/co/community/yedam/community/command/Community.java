package co.community.yedam.community.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;

public class Community implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "main/community/community";
	}

}
