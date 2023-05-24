package kr.ac.kopo.model;

public class User {
	private String id;
	private String pwd;
	private String name;
	private String phone;
	private String userId;
	private float hyp;
	private int author;
	private int status;
	private int inspection;

	private int matchId;
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
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


	public int getAuthor() {
		return author;
	}

	public void setAuthor(int author) {
		this.author = author;
	}
	public int getMatchId() {
		return matchId;
	}
	public void setMatchId(int matchId) {
		this.matchId = matchId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getInspection() {
		return inspection;
	}

	public void setInspection(int inspection) {
		this.inspection = inspection;
	}

	public float getHyp() {
		return hyp;
	}

	public void setHyp(float hyp) {
		this.hyp = hyp;
	}

}
