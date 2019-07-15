package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerCusSelDelAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		System.out.println("ManagerCusSelDelAction");
		MngrDBBean dbPro = MngrDBBean.getInstance();

		request.getSession().setAttribute("CusList", dbPro.selectCus());
		
		System.out.println(dbPro.selectCus());
		
		return "/mngr/mCusSelDel.jsp";
	}

}
