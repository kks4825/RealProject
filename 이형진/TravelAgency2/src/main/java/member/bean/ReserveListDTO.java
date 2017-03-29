package member.bean;

public class ReserveListDTO {
	private int pack_no;
	private String memId;
	private String payMethod;
	private String reserveTime;
	private String totalPay;
	private String paymentState;
	private int reviewSEQ;
	private String numOfPerson;
	private int list_SEQ;	
	
	public String getReserveTime() {
		return reserveTime;
	}
	public void setReserveTime(String reserveTime) {
		this.reserveTime = reserveTime;
	}
	public int getList_SEQ() {
		return list_SEQ;
	}
	public void setList_SEQ(int list_SEQ) {
		this.list_SEQ = list_SEQ;
	}
	public int getPack_no() {
		return pack_no;
	}
	public void setPack_no(int pack_no) {
		this.pack_no = pack_no;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getPayMethod() {
		return payMethod;
	}
	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}
	public String getTotalPay() {
		return totalPay;
	}
	public void setTotalPay(String totalPay) {
		this.totalPay = totalPay;
	}
	public String getPaymentState() {
		return paymentState;
	}
	public void setPaymentState(String paymentState) {
		this.paymentState = paymentState;
	}
	public int getReviewSEQ() {
		return reviewSEQ;
	}
	public void setReviewSEQ(int reviewSEQ) {
		this.reviewSEQ = reviewSEQ;
	}
	public String getNumOfPerson() {
		return numOfPerson;
	}
	public void setNumOfPerson(String numOfPerson) {
		this.numOfPerson = numOfPerson;
	}
		
}
