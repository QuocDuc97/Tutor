package controller.admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.DAO.UploadFile;

@WebServlet("/AddTutor")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB
public class AddTutor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String SAVE_DIRECTORY = "uploadDir";
	public static final String url="/WebContent";

	public AddTutor() {
		super();
	}

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
		String image = request.getParameter("photo");
		String sodienthoai = request.getParameter("phonenumber");
		String diachi = request.getParameter("address");
		String ngheNghiep = request.getParameter("nghenghiep");
//		
		// Upload thành công.
		
		System.out.println(image);
		
		System.out.println("nghe nghiep la" + ngheNghiep);
		// System.out.println("file anh la" + image);
//		String id= khBO.sinhMaKH();
//		KhachHang kh= new KhachHang(id, hoten, email, gioitinh, sodienthoai, diachi);
//		khBO.insertCustomer(kh);
//		request.getRequestDispatcher("ListCustomer").include(request, response);
//		response.sendRedirect(request.getContextPath() + "/AddTutor");
		String result=null;
		try {
			for (Part part : request.getParts()) {
				String fileName = extractFileName(part);
				// refines the fileName in case it is an absolute path
				fileName = new File(fileName).getName();
				result=getFolderUpload().getAbsolutePath() + File.separator + fileName;
				part.write(result);
			}
		} catch (IOException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

	public static String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
	    String[] items = contentDisp.split(";");
	    for (String s : items) {
	      if (s.trim().startsWith("filename")) {
	        return s.substring(s.indexOf("=") + 2, s.length() - 1);
	      }
	    }
	    return "";
	}

	public static File getFolderUpload() {
		File folderUpload = new File(System.getProperty("dir")+url + "/Uploads");
		if (!folderUpload.exists()) {
			folderUpload.mkdirs();
		}
		return folderUpload;
	}

		
		
		
	}

//	private String extractFileName(Part part) {
//		// form-data; name="file"; filename="C:\file1.zip"
//		// form-data; name="file"; filename="C:\Note\file2.zip"
//		String contentDisp = part.getHeader("content-disposition");
//		String[] items = contentDisp.split(";");
//		for (String s : items) {
//			if (s.trim().startsWith("filename")) {
//				// C:\file1.zip
//				// C:\Note\file2.zip
//				String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
//				clientFileName = clientFileName.replace("\\", "/");
//				int i = clientFileName.lastIndexOf('/');
//				// file1.zip
//				// file2.zip
//				return clientFileName.substring(i + 1);
//			}
//		}
//		return null;
//	}


