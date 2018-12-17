package com.tech.online.poimpl;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.tech.online.po.SMusersPO;

@Entity
@Table(name="sm_users")
public class SMusersPOlmpl implements SMusersPO{
	
	public SMusersPOlmpl() {
		super();
	}
	
	@Id
	//@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	@Column(name="user_id")
	private String userId;
	@Column(name="password")
	private String password;
	@Column(name="name")
	private String name;
	@Column(name="role_id")
	private int roleId;
	@Embedded
	private RetailAuditPOImpl  retailAuditPOImp;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	

}
