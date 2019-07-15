package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerCusDelAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		System.out.println("ManagerCusDelAction");
		String cus_code = request.getParameter("cus_code");
		System.out.println(cus_code + "?");
	    // DB와 연동해서 사용자의 인증을 처리
	    MngrDBBean dbPro = MngrDBBean.getInstance();
	    dbPro.deleteCus(cus_code);
	    
		return "/mngr/mCusSelDel.jsp";
	}

}
