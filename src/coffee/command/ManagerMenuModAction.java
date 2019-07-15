package coffee.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MenuBean;
import coffee.bean.MngrDBBean;

public class ManagerMenuModAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8"); // 인코딩

		System.out.println("ManagerMenuModAction");
		// 넘어온 요청의 데이터를 얻어냄
		String menu_name = request.getParameter("menu_name");
		int af_price = Integer.parseInt(request.getParameter("af_price"));
				
		System.out.println("menu_name: " + menu_name);
		System.out.println("af_price: " + af_price);

		// db와 연동해서 사용자의 인증을 처리
		MngrDBBean dbPro = MngrDBBean.getInstance();
		
		dbPro.updateMenu(menu_name, af_price);

		//ArrayList<MenuBean> menu= dbPro.getMenuList();
		
//		for(int i=0;i<menulist.size();i++) {
//			System.out.println(menulist.get(i).getMenu_name());
//		}
		
		request.getSession().setAttribute("menu", dbPro.getMenuList());

		return "/mngr/mMenuCoff.jsp";
	}
}
