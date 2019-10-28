package model.Bean;

public class Lop {
	private String idL;
	private String tenL;
	private MonHoc monHoc;
	private Level capDo;
	private String trangThai;
	private String moTa;

	public Lop(String idL, String tenL, MonHoc monHoc, Level capDo, String trangThai, String moTa) {
		super();
		this.idL = idL;
		this.tenL = tenL;
		this.monHoc = monHoc;
		this.capDo = capDo;
		this.trangThai = trangThai;
		this.moTa = moTa;
	}

	public String getIdL() {
		return idL;
	}

	public void setIdL(String idL) {
		this.idL = idL;
	}

	public String getTenL() {
		return tenL;
	}

	public void setTenL(String tenL) {
		this.tenL = tenL;
	}

	public MonHoc getMonHoc() {
		return monHoc;
	}

	public void setMonHoc(MonHoc monHoc) {
		this.monHoc = monHoc;
	}

	public Level getCapDo() {
		return capDo;
	}

	public void setCapDo(Level capDo) {
		this.capDo = capDo;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

}
