package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sales.Bean.SalesDBBean;

public class SalesProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		response.setCharacterEncoding("UTF-8");

		System.out.println("SalesProAction");
		
		// db와 연동해서 사용자의 인증을 처리
		SalesDBBean dbPro = SalesDBBean.getInstance();

		// 해당 뷰로 보낼 내용을 request 속성에 지정
		request.getSession().setAttribute("slist", dbPro.allSales());

		return "/salesSelect.jsp";
	}

}
