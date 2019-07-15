package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerOneStf_SelAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {	
		request.setCharacterEncoding("utf-8"); // ���ڵ�

		System.out.println("ManagerOneStf_SelAction");
		String stf_code = request.getParameter("stf_code");

		// db�� �����ؼ� ������� ������ ó��
		MngrDBBean dbPro = MngrDBBean.getInstance();

		// �ش� ��� ���� ������ request �Ӽ��� ����
		System.out.println(dbPro.oneSelectStaff(stf_code));
		request.getSession().setAttribute("one_stf", dbPro.oneSelectStaff(stf_code));
		request.getSession().setAttribute("isSearch", new Integer(1));

		return "/mngr/mStaffSel.jsp";
	}

}
