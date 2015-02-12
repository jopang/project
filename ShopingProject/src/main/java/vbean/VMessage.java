package vbean;

import java.util.Date;

public class VMessage {
	private int seq_no;
	private String from_Id;
	private String to_Id;
	private String content;
	private Date send_Date;
	private Date confirm_Date;
	
	public int getSeq_no() {
		return seq_no;
	}
	public void setSeq_no(int seq_no) {
		this.seq_no = seq_no;
	}
	public String getFrom_Id() {
		return from_Id;
	}
	public void setFrom_Id(String from_Id) {
		this.from_Id = from_Id;
	}
	public String getTo_Id() {
		return to_Id;
	}
	public void setTo_Id(String to_Id) {
		this.to_Id = to_Id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getSend_Date() {
		return send_Date;
	}
	public void setSend_Date(Date send_Date) {
		this.send_Date = send_Date;
	}
	public Date getConfirm_Date() {
		return confirm_Date;
	}
	public void setConfirm_Date(Date confirm_Date) {
		this.confirm_Date = confirm_Date;
	}
	
	
	
	
	
}
