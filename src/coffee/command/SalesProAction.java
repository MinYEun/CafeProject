package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sales.Bean.SalesDBBean;

public class SalesProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		response.setCharacterEncoding("UTF-8");

		System.out.println("SalesProAction");
		
		// db�� �����ؼ� ������� ������ ó��
		SalesDBBean dbPro = SalesDBBean.getInstance();

		// �ش� ��� ���� ������ request �Ӽ��� ����
		request.getSession().setAttribute("slist", dbPro.allSales());

		return "/salesSelect.jsp";
	}

}
