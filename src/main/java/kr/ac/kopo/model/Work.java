package kr.ac.kopo.model;


import org.springframework.web.multipart.MultipartFile;

public class Work {
	private String id;
	private String pwd;
	private String name;
	private String phone;
	private int status;
	
	private MultipartFile files;
	private Attach attachs;
	
	
	public Attach getAttachs() {
		return attachs;
	}
	public void setAttachs(Attach attachs) {
		this.attachs = attachs;
	}
	public MultipartFile getFiles() {
		return files;
	}
	public void setFiles(MultipartFile files) {
		this.files = files;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
}
