package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerCusModAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8"); // 인코딩

		System.out.println("ManagerCusModAction");
		// 넘어온 요청의 데이터를 얻어냄
		String phone = request.getParameter("phone");
		String af_phone = request.getParameter("af_phone");

		// db와 연동해서 사용자의 인증을 처리
		MngrDBBean dbPro = MngrDBBean.getInstance();
		dbPro.updateCus(phone, af_phone);

		System.out.println(dbPro.selectCus());
		request.getSession().setAttribute("clist", dbPro.selectCus());

		return "/mngr/mCusMod.jsp";
	}

}
