package model.BO;

import java.util.ArrayList;

import model.Bean.MonHoc;
import model.DAO.MonHocDAO;

public class MonHocBO {
	MonHocDAO monHocDao = new MonHocDAO();

	public void insertMonHoc(MonHoc khachHang) {
		monHocDao.insertMonHoc(khachHang);
	}

	public String sinhMaMonHoc() {
		return monHocDao.sinhMaMonHoc();
	}

	public MonHoc monHoc() {
		return monHocDao.monHoc();
	}

	public ArrayList<MonHoc> listMonHoc() {
		return monHocDao.listMonHoc();
	}

	public MonHoc findMonHoc(String code) {
		return monHocDao.findMonHoc(code);
	}

	public void updateMonHoc(String idMH, String idNhom, String tenMon) {
		monHocDao.updateMonHoc(idMH, idNhom, tenMon);
	}

	public void deleteMonHoc(String code) {
		monHocDao.deleteMonHoc(code);
	}

}
