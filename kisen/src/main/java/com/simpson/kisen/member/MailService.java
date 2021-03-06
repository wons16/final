package com.simpson.kisen.member;

public class MailService {
	private String gmailId;
	private String gmailPw;
	private String from;
	private String fromName;
	
	public MailService(String gmailId, String gmailPw, String from, String fromName) {
		this.gmailId = gmailId;
		this.gmailPw = gmailPw;
		this.from = from;
		this.fromName = fromName;
	}
	
	public int send(String to, String title, String body) {
		return Util.sendMail(gmailId, gmailPw, from, fromName, to, title, body);
	}

}
