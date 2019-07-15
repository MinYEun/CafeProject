package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerOneCusSelAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8"); // ���ڵ�

		System.out.println("ManagerOneCus_SelAction");
		String phone = request.getParameter("phone");

		// db�� �����ؼ� ������� ������ ó��
		MngrDBBean dbPro = MngrDBBean.getInstance();

		System.out.println(phone);
		// �ش� ��� ���� ������ request �Ӽ��� ����\
		System.out.println(dbPro.oneSelectCus(phone));
		request.getSession().setAttribute("one_cus", dbPro.oneSelectCus(phone));
		request.getSession().setAttribute("isSearch", new Integer(1));

		return "/mngr/mCusSel.jsp";
	}

}
