package controller.admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AddTutor
 */
@WebServlet("/AddTutor")
public class AddTutor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String url = "D:\\OneDrive\\GitHub\\Tutor\\source\\WebContent\\";
	public static final String SAVE_DIRECTORY = "Images";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddTutor() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getServletContext().getRequestDispatcher("/WEB-INF/admin/Tutor/addTutor.jsp").forward(request,
				response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		String hoten = request.getParameter("name");
		String email = request.getParameter("email");
		String gioitinh = request.getParameter("optradio");
		String fileName = request.getParameter("photo");
		String sodienthoai = request.getParameter("phonenumber");
		String diachi = request.getParameter("address");
		String ngheNghiep = request.getParameter("nghenghiep");

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

		for (Part part : request.getParts()) {
			fileName = extractFileName(part);
			if (fileName != null && fileName.length() > 0) {
				String filePath = fullSavePath + File.separator + fileName;
				System.out.println("Write attachment to file: " + filePath);
				File file = new File(filePath);
				if (file.exists()) {
					file.delete();
				}

				// Ghi vÃ o file.
				part.write(filePath);
			}
		}
		System.out.println(fileName);
		System.out.println(ngheNghiep);
		System.out.println(hoten);

	}

	/**
	 * Extracts file name from HTTP header content-disposition
	 */
	private String extractFileName(Part part) {
		// form-data; name="file"; filename="C:\file1.zip"
		// form-data; name="file"; filename="C:\Note\file2.zip"
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				// C:\file1.zip
				// C:\Note\file2.zip
				String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
				clientFileName = clientFileName.replace("\\", "/");
				int i = clientFileName.lastIndexOf('/');
				// file1.zip
				// file2.zip
				return clientFileName.substring(i + 1);
			}
		}
		return null;
	}

	public File getFolderUpload() {
		File folderUpload = new File(url + "Uploads");
		if (!folderUpload.exists()) {
			folderUpload.mkdirs();
		}
		return folderUpload;
	}

}
