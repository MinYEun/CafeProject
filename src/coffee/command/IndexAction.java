package coffee.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coffee.bean.MenuBean;
import coffee.bean.MngrDBBean;

public class IndexAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		// DB와 연동해서 사용자의 인증을 처리
		MngrDBBean dbPro = MngrDBBean.getInstance();

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		int check = dbPro.userCheck(id, pw);
		int authority = dbPro.confirmAuthority(id);

		System.out.println("check: " + check);//1: 성공, 0: 비번x, -1: 아이디x
		System.out.println("authority: " + authority);//1: 관리자, 0: 직원

		System.out.println("indexAction");

		if (authority == 1 && check == 1) {// 관리자 로그인 성공
			request.getSession().setAttribute("id", id);
			request.getSession().setAttribute("type", new Integer(0));
			System.out.println("관리자 로그인 성공");
			
			//login시 세션에 등록
			HttpSession session = request.getSession();
			ArrayList<MenuBean> bean=new ArrayList<>();
			bean=dbPro.getMenuList();
			System.out.println(bean.get(0).getMenu_code());
			session.setAttribute("menu", dbPro.getMenuList());
			
			return "/loginPro.jsp";
		}else if (authority == 0 && check == 1) {//직원 로그인 성공
			request.getSession().setAttribute("id", id);
			request.getSession().setAttribute("type", new Integer(1));
			System.out.println("직원 로그인 성공");
			
			//login시 세션에 등록
			HttpSession session = request.getSession();
			ArrayList<MenuBean> bean=new ArrayList<>();
			bean=dbPro.getMenuList();
			System.out.println(bean.get(0).getMenu_code());
			session.setAttribute("menu", dbPro.getMenuList());
			
			return "/loginPro.jsp";
		}else {
			request.getSession().setAttribute("type", new Integer(2));
			System.out.println("로그인 실패");
		}

		return null;
	}
}
