package com.mycompany.biz.board;

import java.sql.Date;

import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	
	private int bbsid;
	private String bbstitle;
	private String userid;
	private Date bbsdate;
	private String bbscontent;
	private int bbsavailable;
	
	@Transient
	private MultipartFile uploadFile;
	
	
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	//	SessionScope값 가져오려면 이렇게
	private String userID;	
    public String getUserID() {
        return userID;
    } 
    public void setUserID(String userID) {
        this.userID = userID;
    }
	
	public int getBbsid() {
		return bbsid;
	}
	public void setBbsid(int bbsid) {
		this.bbsid = bbsid;
	}
	public String getBbstitle() {
		return bbstitle;
	}
	public void setBbstitle(String bbstitle) {
		this.bbstitle = bbstitle;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Date getBbsdate() {
		return bbsdate;
	}
	public void setBbsdate(Date bbsdate) {
		this.bbsdate = bbsdate;
	}
	public String getBbscontent() {
		return bbscontent;
	}
	public void setBbscontent(String bbscontent) {
		this.bbscontent = bbscontent;
	}
	public int getBbsavailable() {
		return bbsavailable;
	}
	public void setBbsavailable(int bbsavailable) {
		this.bbsavailable = bbsavailable;
	}
	

	
	
	
}