package model.BO;

import java.util.ArrayList;

import model.Bean.GiaSu;
import model.DAO.GiaSuDAO;


public class GiaSuBO {
	GiaSuDAO gs1 = new GiaSuDAO();

	public String sinhMaGS() {
		return gs1.sinhMaGS();
	}

	public GiaSu giaSu() {
		return gs1.giaSu();
	}

	public void insertTutor(GiaSu giaSu) {
		gs1.insertTutor(giaSu);;
	}

	public ArrayList<GiaSu> listTutor() {
		return gs1.listTutor();
	}

	public GiaSu findTutor(String code) {
		return gs1.findTutor(code);
	}

	public void deleteCustomer(String code) {
		gs1.deleteTutor(code);
	}
	public void updateTutor(GiaSu gs, String id) {
		gs1.updateTutor(gs,id);
	}

}
