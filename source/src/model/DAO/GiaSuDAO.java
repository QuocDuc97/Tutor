package model.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Bean.GiaSu;

public class GiaSuDAO {
	public GiaSu gs;

	public void insertTutor(GiaSu khachHang) {
		String sql = "insert into KhachHang VALUES(?,?,?,?,?,?,?,?)";
		DatabaseConnect.getConnect();
		PreparedStatement pr;
		try {
			pr = DatabaseConnect.conn.prepareStatement(sql);
			pr.setString(1, khachHang.getIdGS());
			pr.setString(2, khachHang.getHotenGS());
			pr.setString(3, khachHang.getGioiTinhGS());
			pr.setString(4, khachHang.getEmailGS());
			pr.setString(5, khachHang.getImageGS());
			pr.setString(6, khachHang.getSoDienThoaiGS());
			pr.setString(7, khachHang.getDiaChiGS());
			pr.setString(8, khachHang.getNgheNghiepGS());
			pr.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public String sinhMaGS() {
		String maGS = "GS" + DatabaseConnect.sinhMa("id", "GiaSu");
		return maGS;
	}

	public GiaSu giaSu() {
		return gs;
	}

	public ArrayList<GiaSu> listTutor() {
		ArrayList<GiaSu> list = new ArrayList<>();
		String sql = "select * from GiaSu";
		DatabaseConnect.getConnect();
		ResultSet rs = null;
		try {
			PreparedStatement preparedStatement = DatabaseConnect.conn.prepareStatement(sql);
			rs = preparedStatement.executeQuery();
			if (rs == null) {
				System.out.println("rs bi null");
			} else {
				while (rs.next()) {
					String id = rs.getString("id");
					String hoTen = rs.getString("hoten");
					String email = rs.getString("email");
					String gioitinh = rs.getString("gioitinh");
					String image = rs.getString("image");
					String sdt = rs.getString("sodienthoai");
					String address = rs.getString("diachi");
					String nghenghiep = rs.getString("nghenghiep");
					GiaSu gs1 = new GiaSu(id, hoTen, gioitinh, email, image, sdt, address, nghenghiep);
					list.add(gs1);
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public GiaSu findTutor(String code) {
		DatabaseConnect.getConnect();
		String sql = "Select * from GiaSu a where a.id=?";
		PreparedStatement pstm;
		try {
			pstm = DatabaseConnect.conn.prepareStatement(sql);
			pstm.setString(1, code);

			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				String id = rs.getString("id");
				String hoTen = rs.getString("hoten");
				String email = rs.getString("email");
				String gioitinh = rs.getString("gioitinh");
				String image = rs.getString("image");
				String sdt = rs.getString("sodienthoai");
				String address = rs.getString("diachi");
				String nghenghiep = rs.getString("nghenghiep");
				GiaSu gs = new GiaSu(id, hoTen, gioitinh, email, image, sdt, address, nghenghiep);
				return gs;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return null;
	}

	public void updateTutor(GiaSu gs, String id) {
		DatabaseConnect.getConnect();
		String sql = "UPDATE GiaSu SET [id] = ?,[hoten] = ?,[gioitinh] = ?,"
				+ "[email] = ?,[image] = ?,[sodienthoai] = ? ," + "[diachi] = ? ,[nghenghiep] = ? where id='" + id
				+ "'";
		PreparedStatement pstm;
		try {
			pstm = DatabaseConnect.conn.prepareStatement(sql);
			pstm.setString(1, gs.getHotenGS());
			pstm.setString(3, gs.getGioiTinhGS());
			pstm.setString(2, gs.getEmailGS());
			pstm.setString(2, gs.getImageGS());
			pstm.setString(4, gs.getSoDienThoaiGS());
			pstm.setString(5, gs.getDiaChiGS());
			pstm.setString(2, gs.getNgheNghiepGS());
			System.out.println(sql);
			pstm.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

	public void deleteTutor(String code) {
		DatabaseConnect.getConnect();
		String sql = "Delete From GiaSu where id= ?";

		PreparedStatement pstm;
		try {
			pstm = DatabaseConnect.conn.prepareStatement(sql);
			pstm.setString(1, code);
			pstm.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
