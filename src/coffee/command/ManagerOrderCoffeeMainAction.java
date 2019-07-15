package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ManagerOrderCoffeeMainAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		return "/mngr/mOrderCoffee.jsp";// 로그인 성공하면 주문 화면으로
	}
}
