package sist.com.bean;

public class AirScheduleBean {
	private int rm;
	private String s_no;
	private String p_no;/* ������ڵ� */
	private String al_no; /* �װ����ڵ� */
	private String ap_no; /* ��߰����ڵ� */
	private String ap_no2; /* ���������ڵ� */
	private String departtime; /* ��߽ð� */
	private String arrivaltime; /* �����ð� */
	private String lead; /* �ҿ�ð� */
	private String cost;/* ���� */
	private String seat; /* �¼��� */
	public int getRm() {
		return rm;
	}
	public void setRm(int rm) {
		this.rm = rm;
	}
	public String getS_no() {
		return s_no;
	}
	public void setS_no(String s_no) {
		this.s_no = s_no;
	}
	public String getP_no() {
		return p_no;
	}
	public void setP_no(String p_no) {
		this.p_no = p_no;
	}
	public String getAl_no() {
		return al_no;
	}
	public void setAl_no(String al_no) {
		this.al_no = al_no;
	}
	public String getAp_no() {
		return ap_no;
	}
	public void setAp_no(String ap_no) {
		this.ap_no = ap_no;
	}
	public String getAp_no2() {
		return ap_no2;
	}
	public void setAp_no2(String ap_no2) {
		this.ap_no2 = ap_no2;
	}
	public String getDeparttime() {
		return departtime;
	}
	public void setDeparttime(String departtime) {
		this.departtime = departtime;
	}
	public String getArrivaltime() {
		return arrivaltime;
	}
	public void setArrivaltime(String arrivaltime) {
		this.arrivaltime = arrivaltime;
	}
	public String getLead() {
		return lead;
	}
	public void setLead(String lead) {
		this.lead = lead;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	@Override
	public String toString() {
		return "AirScheduleBean [rm=" + rm + ", s_no=" + s_no + ", p_no=" + p_no + ", al_no=" + al_no + ", ap_no="
				+ ap_no + ", ap_no2=" + ap_no2 + ", departtime=" + departtime + ", arrivaltime=" + arrivaltime
				+ ", lead=" + lead + ", cost=" + cost + ", seat=" + seat + "]";
	}
}
