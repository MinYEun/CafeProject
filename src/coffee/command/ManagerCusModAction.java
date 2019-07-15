package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerCusModAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8"); // ���ڵ�

		System.out.println("ManagerCusModAction");
		// �Ѿ�� ��û�� �����͸� ��
		String phone = request.getParameter("phone");
		String af_phone = request.getParameter("af_phone");

		// db�� �����ؼ� ������� ������ ó��
		MngrDBBean dbPro = MngrDBBean.getInstance();
		dbPro.updateCus(phone, af_phone);

		System.out.println(dbPro.selectCus());
		request.getSession().setAttribute("clist", dbPro.selectCus());

		return "/mngr/mCusMod.jsp";
	}

}
