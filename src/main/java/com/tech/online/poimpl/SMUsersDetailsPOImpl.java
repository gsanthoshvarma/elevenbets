package com.tech.online.poimpl;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.Column;

@Entity
@Table(name="sm_users_details")
public class SMUsersDetailsPOImpl {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="sequenceGene")
	@SequenceGenerator(name="sequenceGene",sequenceName="sm_users_details_seq_id")
	private long Id;
	
	@Column(name="user_id")
	private String userId;
	
	@Column(name="username")
	private String username;
	
	@Column(name="password")
	private String passwd;
	
	@Column(name="firstname")
	private String firstName;
	
	@Column(name="lastname")
	private String lastName;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="birth_day")
	private String bday;
	
	@Column(name="gmail")
	private String gmail;
	
	@Column(name="mobile")
	private String mobile;
	
	public long getId() {
		return Id;
	}
	public void setId(long id) {
		Id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBday() {
		return bday;
	}
	public void setBday(String bday) {
		this.bday = bday;
	}
	public String getGmail() {
		return gmail;
	}
	public void setGmail(String gmail) {
		this.gmail = gmail;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public SMUsersDetailsPOImpl() {
		super();
	}
	

}
