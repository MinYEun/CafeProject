package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerMenuDelAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		System.out.println("ManagerMenuDelAction");

		String menu_name = request.getParameter("menu_name");
		System.out.println(menu_name);
		
	    // DB�� �����ؼ� ������� ������ ó��
	    MngrDBBean dbPro = MngrDBBean.getInstance();
	    dbPro.deleteMenu(menu_name);
	    
	    request.getSession().setAttribute("menu", dbPro.getMenuList());
		
		return "/mngr/mMenuDel.jsp";
	}

}
