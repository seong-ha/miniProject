package co.community.yedam.projectStudy.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;

public class ProjectStudy implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "projectStudy/projectStudy/projectStudy";
	}

}
