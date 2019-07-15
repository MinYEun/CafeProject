package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class OneCustomerAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8"); // ���ڵ�

		System.out.println("ManagerOnePointAction");
		String code = request.getParameter("code");

		// db�� �����ؼ� ������� ������ ó��
		MngrDBBean dbPro = MngrDBBean.getInstance();

		// �ش� ��� ���� ������ request �Ӽ��� ����
		System.out.println("cus_code: " + dbPro.oneSelectCus(code));
		request.getSession().setAttribute("one_point", dbPro.oneSelectCus(code));
		request.getSession().setAttribute("isSearch", new Integer(1));
		
		return "/CustomerMain.jsp";
	}

}
