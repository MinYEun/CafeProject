package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ManagerLogoutAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.getSession().removeAttribute("id");
		request.getSession().removeAttribute("name");
		request.getSession().invalidate();
		
		return "/Logout.jsp";
	}
}