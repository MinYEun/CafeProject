package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerCusSelectAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		System.out.println("managerCusSelectAciont");

		MngrDBBean dbPro = MngrDBBean.getInstance();

		String cus_code = request.getParameter("cus_code");
		System.out.println(cus_code);

		request.getSession().setAttribute("selectPoint", dbPro.selectPoint(cus_code));

		return "/mngr/mCusPoSel.jsp";
	}

}
