package product.bean;

public class SchedulesDTO {
	private int pack_no;
	private int schedules_no;
	private String schedules_content;
	private String schedules_date;
	
	public int getPack_no() {
		return pack_no;
	}
	public void setPack_no(int pack_no) {
		this.pack_no = pack_no;
	}
	public int getSchedules_no() {
		return schedules_no;
	}
	public void setSchedules_no(int schedules_no) {
		this.schedules_no = schedules_no;
	}
	public String getSchedules_content() {
		return schedules_content;
	}
	public void setSchedules_content(String schedules_content) {
		this.schedules_content = schedules_content;
	}
	public String getSchedules_date() {
		return schedules_date;
	}
	public void setSchedules_date(String schedules_date) {
		this.schedules_date = schedules_date;
	}
}
