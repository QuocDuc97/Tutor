package model.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Bean.MonHoc;
import model.Bean.NhomMH;

public class MonHocDAO {
	public MonHoc monHoc;
	NhomMHDAO mh = new NhomMHDAO();

	public void insertMonHoc(MonHoc khachHang) {
		String sql = "insert into MonHoc VALUES(?,?,?)";
		DatabaseConnect.getConnect();
		PreparedStatement pr;
		try {
			pr = DatabaseConnect.conn.prepareStatement(sql);
			pr.setString(1, khachHang.getIdMH());
			pr.setString(2, khachHang.getTenMH());
			pr.setString(3, khachHang.getNhomMH().getIdN());
			pr.executeUpdate();
			System.out.println("thanh cong roi mon học ròi nhé hahaha");
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public String sinhMaMonHoc() {
		String maMon = "MH" + DatabaseConnect.sinhMa("id_mon", "MonHoc");
		return maMon;
	}

	public MonHoc monHoc() {
		return monHoc;
	}

	public ArrayList<MonHoc> listMonHoc() {
		ArrayList<MonHoc> list = new ArrayList<>();
		String sql = "select * from MonHoc a join NhomMH b on a.id_nhom=b.id_nhom";
		DatabaseConnect.getConnect();

		ResultSet rs = null;
		try {
			PreparedStatement preparedStatement = DatabaseConnect.conn.prepareStatement(sql);
			rs = preparedStatement.executeQuery();
			if (rs == null) {
				System.out.println("rs bi null");
			} else {
				while (rs.next()) {
					MonHoc m = new MonHoc();
					m.setIdMH(rs.getString("id_mon"));
					m.setTenMH(rs.getString("tenmon"));
					m.setNhomMH(new NhomMH(rs.getString("id_nhom"), rs.getString("tennhom")));
					list.add(m);
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public MonHoc findMonHoc(String code) {
		DatabaseConnect.getConnect();
		String sql = "Select * from MonHoc a where a.id_monhoc=?";
		PreparedStatement pstm;
		try {
			pstm = DatabaseConnect.conn.prepareStatement(sql);
			pstm.setString(1, code);

			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id_mon");
				String hoTen = rs.getString("tenmon");
				NhomMH nMH = mh.findNhomMH(rs.getString("id_nhom"));
				MonHoc gs = new MonHoc(id, hoTen, nMH);
				return gs;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return null;
	}

	public void updateMonHoc(String idMH, String idNhom, String tenMon) {
		DatabaseConnect.getConnect();
		String sql = String.format("UPDATE MonHoc SET [tenmon] = N'%s',id_nhom='%s' where idMH='%s'", tenMon, idNhom,
				idMH);
		PreparedStatement pstm;
		try {
			pstm = DatabaseConnect.conn.prepareStatement(sql);
			System.out.println(sql);
			pstm.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

	public void deleteMonHoc(String code) {
		DatabaseConnect.getConnect();
		String sql = "Delete From MonHoc where id_mon= ?";

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
