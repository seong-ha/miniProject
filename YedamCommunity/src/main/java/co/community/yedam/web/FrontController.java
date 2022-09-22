package co.community.yedam.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.Main;
import co.community.yedam.common.Command;
import co.community.yedam.member.command.MemberLoginForm;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// 실제 요청페이지와, 그에 대해 할당할 커멘드를 담아두는 저장소
	private HashMap<String, Command> map = new HashMap<String, Command>();
	
    public FrontController() {
        super();
    }

    public void init(ServletConfig config) throws ServletException {
		map.put("/main.do", new Main());
		map.put("/memberLoginForm.do", new MemberLoginForm());
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// 실제 요펑 페이지 분석
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());
		
		// 분석된 요청 페이지에 대해 할당된 커멘드에게 일 시킴.(DB까지 가서 결과물 가져옴)
		Command command = map.get(page);
		String viewPage = command.exec(request, response);
		
		// 커멘드가 가져온 결과를 바탕으로 해당하는 view를 찾아서 실행시켜서 요청에 대한 응답을 해준다. (view Resolver)
		if (!viewPage.endsWith(".do")) {
			
			if (viewPage.startsWith("ajax:")) { // ajax를 사용할때 
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			} else {
				// tiles 적용 안 되도록할 때
				if (viewPage.startsWith("noTiles:")) {
					viewPage = "/WEB-INF/views/" + viewPage.substring(8) + ".jsp";
				} else { // tiles 적용 되도록할 때
					viewPage = viewPage + ".tiles";  // tiles layout 사용
				}
				
				// RequestDipatcher의 forward로 쏴줘야 앞단에 뿌려줄 수 있다.
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			}
		} else {
			response.sendRedirect(viewPage); // *.do return -> 다시 Controller로 요청 들어감.(뺑뺑이)
		}
	}


}
