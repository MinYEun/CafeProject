package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerCusAddAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.getCharacterEncoding();

		System.out.println("ManagerCusAddFormAction");
		MngrDBBean dbPro = MngrDBBean.getInstance();

		String phone = request.getParameter("phone");
		String name = request.getParameter("name");

		System.out.println(phone);
		System.out.println(name);

		dbPro.insertCus(phone, name);
		
		return "/mngr/mCusAddForm.jsp";
	}

}
