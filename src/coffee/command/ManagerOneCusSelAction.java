package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerOneCusSelAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8"); // 인코딩

		System.out.println("ManagerOneCus_SelAction");
		String phone = request.getParameter("phone");

		// db와 연동해서 사용자의 인증을 처리
		MngrDBBean dbPro = MngrDBBean.getInstance();

		System.out.println(phone);
		// 해당 뷰로 보낼 내용을 request 속성에 지정\
		System.out.println(dbPro.oneSelectCus(phone));
		request.getSession().setAttribute("one_cus", dbPro.oneSelectCus(phone));
		request.getSession().setAttribute("isSearch", new Integer(1));

		return "/mngr/mCusSel.jsp";
	}

}
