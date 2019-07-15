package coffee.command;

import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import coffee.bean.MenuBean;
import coffee.bean.MngrDBBean;

public class ManagerMenuInsertProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		request.setCharacterEncoding("utf-8");

		String filename = "";
		String realFolder = ""; // 웹 애플리케이션상의 절대 경로 저장
		String encType = "utf-8";
		String saveFolder = "/images"; // 파일 업로드 파일 지정
		int maxSize = 100 * 1024 * 1024; // 최대 업로드 파일 크기 100MB

		MultipartRequest imageUp = null;

		// 웹 애플리케이션 상의 절대 경로를 구함
		ServletContext context = request.getServletContext();
		realFolder = context.getRealPath(saveFolder);

		try {
			// 파일 업로드를 수행하는 MultipartRequest 객체 생성
			imageUp = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

			// <input type="file">인 모든 파라미터를 얻어냄
			Enumeration<?> files = imageUp.getFileNames();

			// 파일 정보가 있따면
			while (files.hasMoreElements()) {
				// input 태그의 속성이 file인 태그의 name 속성값 : 파라미터 이름
				String name = (String) files.nextElement();

				// 서버에 저장된 파일 이름
				filename = imageUp.getFilesystemName(name);
			}
		} catch (Exception e) {
			System.out.println("파일 경로 구하기 실패");
		}

		// 폼으로 부터 넘어온 정보 중 파일이 아닌 정보를 얻어냄
		MenuBean product = new MenuBean();
		String inf = imageUp.getParameter("inf");
		String menu_name = imageUp.getParameter("menu_name");
		int menu_pr = Integer.parseInt(imageUp.getParameter("menu_pr"));

		product.setClass_code(inf);
		product.setMenu_name(menu_name);
		product.setPrice(menu_pr);
		product.setImg(filename);

		// DB와 연동해서 사용자의 인증을 처리
		MngrDBBean dbPro = MngrDBBean.getInstance();
		dbPro.insertProduct(product);

		return "/mngr/mMenuAdd.jsp";
	}

}
