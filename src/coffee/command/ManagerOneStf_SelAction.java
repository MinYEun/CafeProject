package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerOneStf_SelAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {	
		request.setCharacterEncoding("utf-8"); // 인코딩

		System.out.println("ManagerOneStf_SelAction");
		String stf_code = request.getParameter("stf_code");

		// db와 연동해서 사용자의 인증을 처리
		MngrDBBean dbPro = MngrDBBean.getInstance();

		// 해당 뷰로 보낼 내용을 request 속성에 지정
		System.out.println(dbPro.oneSelectStaff(stf_code));
		request.getSession().setAttribute("one_stf", dbPro.oneSelectStaff(stf_code));
		request.getSession().setAttribute("isSearch", new Integer(1));

		return "/mngr/mStaffSel.jsp";
	}

}
