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
		String realFolder = ""; // �� ���ø����̼ǻ��� ���� ��� ����
		String encType = "utf-8";
		String saveFolder = "/images"; // ���� ���ε� ���� ����
		int maxSize = 100 * 1024 * 1024; // �ִ� ���ε� ���� ũ�� 100MB

		MultipartRequest imageUp = null;

		// �� ���ø����̼� ���� ���� ��θ� ����
		ServletContext context = request.getServletContext();
		realFolder = context.getRealPath(saveFolder);

		try {
			// ���� ���ε带 �����ϴ� MultipartRequest ��ü ����
			imageUp = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

			// <input type="file">�� ��� �Ķ���͸� ��
			Enumeration<?> files = imageUp.getFileNames();

			// ���� ������ �ֵ���
			while (files.hasMoreElements()) {
				// input �±��� �Ӽ��� file�� �±��� name �Ӽ��� : �Ķ���� �̸�
				String name = (String) files.nextElement();

				// ������ ����� ���� �̸�
				filename = imageUp.getFilesystemName(name);
			}
		} catch (Exception e) {
			System.out.println("���� ��� ���ϱ� ����");
		}

		// ������ ���� �Ѿ�� ���� �� ������ �ƴ� ������ ��
		MenuBean product = new MenuBean();
		String inf = imageUp.getParameter("inf");
		String menu_name = imageUp.getParameter("menu_name");
		int menu_pr = Integer.parseInt(imageUp.getParameter("menu_pr"));

		product.setClass_code(inf);
		product.setMenu_name(menu_name);
		product.setPrice(menu_pr);
		product.setImg(filename);

		// DB�� �����ؼ� ������� ������ ó��
		MngrDBBean dbPro = MngrDBBean.getInstance();
		dbPro.insertProduct(product);

		return "/mngr/mMenuAdd.jsp";
	}

}
