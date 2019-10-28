package controller.admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.BO.GiaSuBO;
import model.Bean.GiaSu;

@WebServlet("/EditTutor")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50)
public class EditTutor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String SAVE_DIRECTORY = "Images";
	String code;
	GiaSu giasu = null;

	public EditTutor() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		code = (String) request.getParameter("idGS_id");

		String errorString = null;
		GiaSuBO gsBO = new GiaSuBO();

		try {
			giasu = gsBO.findTutor(code);
		} catch (Exception e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}
		if (errorString != null && giasu == null) {
			response.sendRedirect(request.getServletPath() + "/listTutor");
			return;
		}

		// Lưu thông tin vào request attribute trước khi forward sang views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("listTutorEdit", giasu);
//		String image = giasu.getImageGS().substring(giasu.getImageGS().lastIndexOf("\\"));
//		request.setAttribute("image", image);

		request.getServletContext().getRequestDispatcher("/WEB-INF/admin/Tutor/editTutor.jsp").forward(request,
				response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		String hoten = request.getParameter("usename");
		String email = request.getParameter("email");
		String gioitinh = request.getParameter("optradio");
		String fileName = request.getParameter("fileanh");
		String sodienthoai = request.getParameter("phonenumber");
		String diachi = request.getParameter("address");
		String ngheNghiep = request.getParameter("nghenghiep");
		System.out.println(fileName);
		System.out.println(ngheNghiep);
		System.out.println(hoten);

		String appPath = request.getServletContext().getRealPath("");
		appPath = appPath.replace('\\', '/');

		String fullSavePath = null;
		if (appPath.endsWith("/")) {
			fullSavePath = appPath + SAVE_DIRECTORY;
		} else {
			fullSavePath = appPath + "/" + SAVE_DIRECTORY;
		}

		File fileSaveDir = new File(fullSavePath);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdir();
		}

		String filePath = null;
		for (Part part : request.getParts()) {
			fileName = extractFileName(part);
			if (fileName != null && fileName.length() > 0) {
				filePath = fullSavePath + File.separator + fileName;
				System.out.println("Write attachment to file: " + filePath);
				File file = new File(filePath);
				if (file.exists()) {
					file.delete();
				}

				// Ghi vÃ o file.
				part.write(filePath);
			}
		}
		GiaSuBO gsBO = new GiaSuBO();
		if (filePath == null) {
			filePath = giasu.getImageGS();
		}
		GiaSu gs = new GiaSu(code, hoten, gioitinh, email, filePath, sodienthoai, diachi, ngheNghiep);
		gsBO.updateTutor(gs, code);
		System.out.println("thanh cong roi");
		request.getRequestDispatcher("ListTutor").forward(request, response);

	}

	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
				clientFileName = clientFileName.replace("\\", "/");
				int i = clientFileName.lastIndexOf('/');
				return clientFileName.substring(i + 1);
			}
		}
		return null;
	}

}
