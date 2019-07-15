package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerStaffDelAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		System.out.println("ManagerStaffDelAction");
		String stf_code = request.getParameter("stf_code");

	    // DB와 연동해서 사용자의 인증을 처리
	    MngrDBBean dbPro = MngrDBBean.getInstance();
	    dbPro.deleteStaff(stf_code);
		
		return "/mngr/mStaffSelDel.jsp";
	}

}
