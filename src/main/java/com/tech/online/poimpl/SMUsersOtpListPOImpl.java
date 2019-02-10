package com.tech.online.poimpl;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * @author Sambaiah
 *
 */
@Entity
@Table(name="tb_mst_smusers_opt_mapping")
public class SMUsersOtpListPOImpl {
	public SMUsersOtpListPOImpl() {
		super();
	}
	@Id    
	private long id;
    
    @Column(name="gmail")
	private String gmail;    
    
    
    @Column(name="otp")
	private String otp;
    
    @Column(name="is_active")
    private String isActive;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	

	public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	
	
}

