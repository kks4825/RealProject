package product.bean;

import java.util.Date;

public class TravelReviewDTO {
	private int seq;
	private String memId;
	private String subject;
	private String content;
	private Date reviewDate;
	private int starScore;
	private int pack_no;
	private String pack_city;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public int getStarScore() {
		return starScore;
	}
	public void setStarScore(int starScore) {
		this.starScore = starScore;
	}
	public int getPack_no() {
		return pack_no;
	}
	public void setPack_no(int pack_no) {
		this.pack_no = pack_no;
	}
	public String getPack_city() {
		return pack_city;
	}
	public void setPack_city(String pack_city) {
		this.pack_city = pack_city;
	}
	
}
