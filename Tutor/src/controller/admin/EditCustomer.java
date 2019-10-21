package controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BO.KhachHangBO;
import model.Bean.KhachHang;

@WebServlet("/EditCustomer")
public class EditCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String code;

	public EditCustomer() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 code = (String) request.getParameter("idKH_id");

		KhachHang customer = null;

		String errorString = null;
		KhachHangBO khBO = new KhachHangBO();

		try {
			customer = khBO.findCustomer(code);
		} catch (Exception e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}

		// Không có lỗi.
		// Sản phẩm không tồn tại để edit.
		// Redirect sang trang danh sách khach hang.
		if (errorString != null && customer == null) {
			response.sendRedirect(request.getServletPath() + "/listCustomer");
			return;
		}

		// Lưu thông tin vào request attribute trước khi forward sang views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("listCustomerEdit", customer);

		request.getServletContext().getRequestDispatcher("/WEB-INF/admin/Customer/editCustomer.jsp").forward(request,
				response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		String hoten = request.getParameter("name");
		String email = request.getParameter("email");
		String gioitinh = request.getParameter("optradio");
		String sodienthoai = request.getParameter("phonenumber");
		String diachi = request.getParameter("address");
		KhachHangBO khBO= new KhachHangBO();	
		KhachHang kh= new KhachHang(code, hoten, email, gioitinh, sodienthoai, diachi);
		khBO.updateCustomer(kh, code);
		request.getRequestDispatcher("ListCustomer").include(request, response);
	}

}
