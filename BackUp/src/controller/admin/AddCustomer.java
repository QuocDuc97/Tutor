package controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BO.KhachHangBO;
import model.Bean.KhachHang;

@WebServlet("/addCustomer")
public class AddCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddCustomer() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getServletContext()
				.getRequestDispatcher("/WEB-INF/admin/Customer/addCustomer.jsp");
		dispatcher.forward(request, response);
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
		String id= khBO.sinhMaKH();
		KhachHang kh= new KhachHang(id, hoten, email, gioitinh, sodienthoai, diachi);
		khBO.insertCustomer(kh);
		request.getRequestDispatcher("ListCustomer").include(request, response);

	}

}
